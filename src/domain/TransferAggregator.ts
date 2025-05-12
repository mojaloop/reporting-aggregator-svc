import { IAggregator, IAggDeps, TransferStateChange, Record, ProcessedData, KnexRawResult } from '../types';

export class TransferAggregator implements IAggregator {
  private isRunning: boolean = false;
  private processName: string;

  constructor(
    private readonly deps: IAggDeps,
    processName: string = 'transactions_process',
  ) {
    this.processName = processName;
  }

  async start(): Promise<void> {
    if (this.isRunning) {
      this.deps.logger.info('Transfer Aggregator is already running');
      return;
    }

    this.isRunning = true;
    this.deps.logger.info('Transfer Aggregator is started');

    try {
      await this.processTransactions();
    } catch (error) {
      this.deps.logger.error('Transfer Aggregator failed', error);
      throw error;
    }
  }

  async stop(): Promise<void> {
    if (!this.isRunning) {
      this.deps.logger.info('Transfer Aggregator is already stopped');
      return;
    }

    this.isRunning = false;
    // await this.deps.knexClient.destroy();
    this.deps.logger.info('Transfer Aggregator is stopped');
  }

  getDeps(): IAggDeps {
    return this.deps;
  }

  private async processRecord(record: Record): Promise<ProcessedData | null> {
    if (!record.amount || record.amount <= 0) return null;

    const stateChange = record.transferStateChangeState
      ? {
        transferState: record.transferStateChangeState,
        reason: record.transferStateChangeReason,
        dateTime: record.transferStateChangeDateTime,
      }
      : null;

    return {
      transferId: record.transferId,
      transactionId: record.transactionId,
      sourceAmount: record.sourceAmount,
      sourceCurrency: record.sourceCurrency,
      targetAmount: record.targetAmount,
      targetCurrency: record.targetCurrency,
      createdAt: record.createdAt,
      lastUpdated: new Date(),
      transferState: stateChange ? stateChange.transferState : '',
      transferStateChanges: stateChange ? [stateChange] : [],
      transactionType: record.transactionType,
      errorCode: record.errorCode,
      transferSettlementWindowId: record.transferSettlementWindowId,
      payerDFSP: record.payerDFSP,
      payerDFSPProxy: record.payerDFSPProxy,
      payeeDFSP: record.payeeDFSP,
      payeeDFSPProxy: record.payeeDFSPProxy,
      positionChanges: record.positionChangesParticipantName
        ? [
          {
            participantName: record.positionChangesParticipantName,
            currency: record.positionChangesCurrency,
            ledgerType: record.positionChangesLedgerType,
            dateTime: record.positionChangesDateTime,
            updatedPosition: record.positionChangesUpdatedValue,
            change: record.positionChangesChange,
          },
        ]
        : [],
      payerParty: {
        partyIdType: record.payerPartyIdType,
        partyIdentifier: record.payerPartyIdentifier,
        partyName: record.payerPartyName,
        supportedCurrencies: record.currency,
      },
      payeeParty: {
        partyIdType: record.payeePartyIdType,
        partyIdentifier: record.payeePartyIdentifier,
        partyName: record.payeePartyName,
        supportedCurrencies: record.currency,
      },
      quoteRequest: {
        quoteId: record.quoteId,
        amountType: record.quoteRequestAmountType,
        amount: {
          currency: record.quoteRequestCurrency,
          amount: record.quoteRequestAmount,
        },
        fees: {
          currency: record.transferTermsPayeeFspFeeCurrency,
          amount: record.transferTermsPayeeFspFeeAmount,
        },
      },
      transferTerms: {
        transferAmount: {
          currency: record.currency,
          amount: record.amount,
        },
        payeeReceiveAmount: {
          currency: record.transferTermsPayeeReceiveCurrency,
          amount: record.transferTermsPayeeReceiveAmount,
        },
        payeeFspFee: {
          currency: record.transferTermsPayeeFspFeeCurrency,
          amount: record.transferTermsPayeeFspFeeAmount,
        },
        payeeFspCommission: {
          currency: record.transferTermsPayeeFspCommissionCurrency,
          amount: record.transferTermsPayeeFspCommissionAmount,
        },
        expiration: record.transferTermsExpiration,
        geoCode: {
          latitude: record.geoCodeLatitude != null ? String(record.geoCodeLatitude) : '',
          longitude: record.geoCodeLongitude != null ? String(record.geoCodeLongitude) : '',
        },
        ilpPacket: record.ilpPacket,
      },
      conversions: [],
    };
  }

  private async processTransactions(): Promise<void> {
    let lastId = await this.deps.stateModel
      .findOne({ process: this.processName })
      .then((doc) => (doc ? doc.lastId : 0));

    while (this.isRunning) {
      try {
        const transferStateChanges: TransferStateChange[] = await this.deps
          .knexClient('transferStateChange')
          .select('transferId', 'transferStateChangeId')
          .where('transferStateChangeId', '>', lastId)
          // .whereIn('transferStateId', ['COMMITTED', 'ABORTED', 'FAILED'])
          .orderBy('transferStateChangeId')
          .limit(this.deps.batchSize);

        if (!transferStateChanges.length) {
          // Configurable with env var
          await new Promise((resolve) => setTimeout(resolve, this.deps.timeout));
          continue;
        }

        const batchTransferIds = [...new Set(transferStateChanges.map((row) => row.transferId))];
        // @ts-expect-error{transferStateChanges is undefined}
        const newLastId = transferStateChanges[transferStateChanges.length - 1].transferStateChangeId;

        if (!batchTransferIds.length) {
          await this.deps.stateModel.updateOne(
            { process: this.processName },
            { $set: { lastId: newLastId, updatedAt: new Date() } },
            { upsert: true },
          );
          lastId = newLastId;
          continue;
        }

        const rawResult = await this.deps.knexClient.raw(
          `
          SELECT 
            transfer.transferId,
            q.transactionReferenceId as transactionId,
            ft.sourceAmount,
            ft.sourceCurrency,
            ft.targetAmount,
            ft.targetCurrency,
            transfer.createdDate as createdAt,
            transfer.amount,
            transfer.currencyId AS currency,
            tsc.transferStateChangeId AS transferStateChangeId,
            tsc.transferStateId AS transferStateChangeState,
            tsc.reason AS transferStateChangeReason,
            tsc.createdDate AS transferStateChangeDateTime,
            ts2.name as transactionType,
            te.errorCode,
            CASE WHEN da.isProxy = 0 THEN da.name ELSE ep1.name END as payerDFSP,
            CASE WHEN da.isProxy = 1 THEN da.name ELSE NULL END as payerDFSPProxy,
            CASE WHEN ca.isProxy = 0 THEN ca.name ELSE ep2.name END as payeeDFSP,
            CASE WHEN ca.isProxy = 1 THEN ca.name ELSE NULL END as payeeDFSPProxy,
            payerpit.name as payerPartyIdType,
            qp1.partyIdentifierValue as payerPartyIdentifier,
            qp1.partyName as payerPartyName,
            payeepit.name as payeePartyIdType,
            qp2.partyIdentifierValue as payeePartyIdentifier,
            qp2.partyName as payeePartyName,
            qr.quoteId,
            at2.name as quoteRequestAmountType,
            q.currencyId as quoteRequestCurrency,
            q.amount as quoteRequestAmount,
            qr.transferAmount as transferTermsTransferAmount,
            qr.transferAmountCurrencyId as transferTermsTransferCurrency,
            qr.payeeReceiveAmountCurrencyId as transferTermsPayeeReceiveCurrency,
            qr.payeeReceiveAmount as transferTermsPayeeReceiveAmount,
            qr.payeeFspFeeAmount as transferTermsPayeeFspFeeAmount,
            qr.payeeFspFeeCurrencyId as transferTermsPayeeFspFeeCurrency,
            qr.payeeFspCommissionCurrencyId as transferTermsPayeeFspCommissionCurrency,
            qr.payeeFspCommissionAmount as transferTermsPayeeFspCommissionAmount,
            qr.responseExpirationDate as transferTermsExpiration,
            ilpp.value as ilpPacket,
            pa.name as positionChangesParticipantName,
            pc3.currencyId as positionChangesCurrency,
            lat.name as positionChangesLedgerType,
            ppc.createdDate as positionChangesDateTime,
            ppc.value as positionChangesUpdatedValue,
            ppc.change as positionChangesChange,
            tf.settlementWindowId as transferSettlementWindowId,
            gc.latitude as geoCodeLatitude,
            gc.longitude as geoCodeLongitude
          FROM transfer
            INNER JOIN transferParticipant AS tp1 ON tp1.transferId = transfer.transferId
            LEFT JOIN externalParticipant AS ep1 ON ep1.externalParticipantId = tp1.externalParticipantId
            INNER JOIN transferParticipantRoleType AS tprt1 ON tprt1.transferParticipantRoleTypeId = tp1.transferParticipantRoleTypeId
            INNER JOIN participant AS da ON da.participantId = tp1.participantId
            LEFT JOIN participantCurrency AS pc1 ON pc1.participantCurrencyId = tp1.participantCurrencyId
            INNER JOIN transferParticipant AS tp2 ON tp2.transferId = transfer.transferId
            LEFT JOIN externalParticipant AS ep2 ON ep2.externalParticipantId = tp2.externalParticipantId
            INNER JOIN transferParticipantRoleType AS tprt2 ON tprt2.transferParticipantRoleTypeId = tp2.transferParticipantRoleTypeId
            INNER JOIN participant AS ca ON ca.participantId = tp2.participantId
            LEFT JOIN participantCurrency AS pc2 ON pc2.participantCurrencyId = tp2.participantCurrencyId
            INNER JOIN ilpPacket AS ilpp ON ilpp.transferId = transfer.transferId
            LEFT JOIN transferStateChange AS tsc ON tsc.transferId = transfer.transferId
              AND tsc.transferStateChangeId = (
                SELECT MAX(transferStateChangeId) FROM transferStateChange tsctmp WHERE tsctmp.transferId = transfer.transferId
              )
            LEFT JOIN transferState AS ts ON ts.transferStateId = tsc.transferStateId
            LEFT JOIN transferFulfilment AS tf ON tf.transferId = transfer.transferId
            LEFT JOIN transferError AS te ON te.transferId = transfer.transferId
            LEFT JOIN fxTransfer AS ft ON ft.determiningTransferId = transfer.transferId
            INNER JOIN quote AS q ON q.transactionReferenceId = transfer.transferId
            INNER JOIN transactionScenario AS ts2 ON ts2.transactionScenarioId = q.transactionScenarioId
            INNER JOIN quoteParty AS qp1 ON q.quoteId = qp1.quoteId AND qp1.partyTypeId = tprt1.transferParticipantRoleTypeId
            INNER JOIN quoteParty AS qp2 ON q.quoteId = qp2.quoteId AND qp2.partyTypeId = tprt2.transferParticipantRoleTypeId
            INNER JOIN partyIdentifierType AS payerpit ON payerpit.partyIdentifierTypeId = qp1.partyIdentifierTypeId
            INNER JOIN partyIdentifierType AS payeepit ON payeepit.partyIdentifierTypeId = qp2.partyIdentifierTypeId
            INNER JOIN quoteResponse AS qr ON qr.quoteId = q.quoteId
            INNER JOIN amountType at2 ON q.amountTypeId = at2.amountTypeId
            LEFT JOIN participantPositionChange ppc ON ppc.transferStateChangeId = tsc.transferStateChangeId
            LEFT JOIN participantCurrency pc3 ON pc3.participantCurrencyId = ppc.participantCurrencyId
            LEFT JOIN participant pa ON pa.participantId = pc3.participantId
            LEFT JOIN ledgerAccountType lat ON lat.ledgerAccountTypeId = pc3.ledgerAccountTypeId
            LEFT JOIN geoCode gc ON gc.quotePartyId = qp2.quotePartyId
          WHERE transfer.transferId IN (${Array(batchTransferIds.length).fill('?').join(',')})
            AND tprt1.name = 'PAYER_DFSP'
            AND tprt2.name = 'PAYEE_DFSP'
          ORDER BY tsc.transferStateChangeId
          `,
          batchTransferIds,
        ) as KnexRawResult;

        const records: Record[] = rawResult[0];

        if (records.length > 0) {
          const bulkOps = [];
          for (const record of records) {
            const processedData = await this.processRecord(record);
            if (processedData) {
              bulkOps.push({
                updateOne: {
                  filter: { transferId: record.transferId },
                  update: { $set: processedData },
                  upsert: true,
                },
              });
            }
          }

          if (bulkOps.length > 0) {
            try {
              await this.deps.transactionModel.bulkWrite(bulkOps);
            } catch (error) {
              this.deps.logger.error(`Bulk upsert failed for ${this.processName}`, error);
            }
          }

          await this.deps.stateModel.updateOne(
            { process: this.processName },
            { $set: { lastId: newLastId, updatedAt: new Date() } },
            { upsert: true },
          );
          lastId = newLastId;
          this.deps.logger.info(`Processed up to transferStateChangeId ${lastId}`);
        } else {
          await this.deps.stateModel.updateOne(
            { process: this.processName },
            { $set: { lastId: newLastId, updatedAt: new Date() } },
            { upsert: true },
          );
          lastId = newLastId;
        }
      } catch (error) {
        this.deps.logger.error(`Error in ${this.processName}`, error);
      }
      finally {
        await new Promise((resolve) => setTimeout(resolve, this.deps.timeout));
      }
    }
  }
}
