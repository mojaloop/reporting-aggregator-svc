import { IAggregator, IAggDeps } from '../types';

interface FxTransferStateChange {
  fxTransferStateChangeId: number;
  commitRequestId: string;
}

interface ProcessedConversionRecord {
  transferId: string;
  conversions?: any;
  fxTransferStateChangeId?: number;
  commitRequestId?: string;
}

interface ConversionRecord {
  transferId: string;
  conversionRequestId?: string;
  conversionId?: string;
  conversionCommitRequestId?: string;
  conversionState?: string;
  conversionSettlementWindowId?: number;
  conversionTermsConversionId?: string;
  conversionTermsDeterminingTransferId?: string;
  conversionTermsInitiatingFsp?: string;
  conversionTermsCounterPartyFsp?: string;
  conversionTermsAmountType?: string;
  conversionTermsSourceAmount?: number;
  conversionTermsSourceCurrency?: string;
  conversionTermsTargetAmount?: number;
  conversionTermsTargetCurrency?: string;
  conversionTermsExpiration?: string;
  conversionStateChangesState?: string;
  conversionStateChangesReason?: string;
  conversionStateChangesDateTime?: string;
  ilpPacket?: string;
  conversionType?: string;
  counterPartyProxy?: string;
  counterPartyFsp?: string;
  fxTransferStateChangeId?: number;
  commitRequestId?: string;
}

interface ChargeRecord {
  determiningTransferId: string;
  chargeType?: string;
  sourceAmount?: number;
  sourceCurrency?: string;
  targetAmount?: number;
  targetCurrency?: string;
}

export class FxTransferAggregator implements IAggregator {
  private isRunning: boolean = false;
  private processName: string;

  constructor(
    private readonly deps: IAggDeps,
    processName: string = 'fx_conversion_process',
  ) {
    this.processName = processName;
  }

  async start(): Promise<void> {
    if (this.isRunning) {
      this.deps.logger.info('FxTransfer Aggregator is already running');
      return;
    }

    this.isRunning = true;
    this.deps.logger.info('FxTransfer Aggregator is started');

    try {
      await this.processConversions();
    } catch (error) {
      this.deps.logger.error('FxTransfer Aggregator failed', error);
      throw error;
    }
  }

  async stop(): Promise<void> {
    if (!this.isRunning) {
      this.deps.logger.info('FxTransfer Aggregator is already stopped');
      return;
    }

    this.isRunning = false;
    this.deps.logger.info('FxTransfer Aggregator is stopped');
  }

  getDeps(): IAggDeps {
    return this.deps;
  }

  private async processRecord(
    conv: ConversionRecord,
    charges: ChargeRecord[],
  ): Promise<ProcessedConversionRecord | null> {
    if (!conv.transferId) return null;

    const conversionSide = conv.conversionType?.toLowerCase().includes('payee') ? 'payee' : 'payer';

    return {
      transferId: conv.transferId,
      conversions: {
        [conversionSide]: {
          counterPartyProxy: conv.counterPartyProxy?.trim() || null,
          conversionRequestId: conv.conversionRequestId?.trim() || null,
          conversionId: conv.conversionId?.trim() || null,
          conversionCommitRequestId: conv.conversionCommitRequestId?.trim() || null,
          conversionState: conv.conversionState?.trim() || null,
          counterPartyFSP: conv.counterPartyFsp?.trim() || null,
          conversionType: conv.conversionType?.trim() || null,
          conversionSettlementWindowId: Number(conv.conversionSettlementWindowId || 0),
          conversionTerms: {
            conversionId: conv.conversionTermsConversionId?.trim() || null,
            determiningTransferId: conv.conversionTermsDeterminingTransferId?.trim() || null,
            initiatingFsp: conv.conversionTermsInitiatingFsp?.trim() || null,
            counterPartyFsp: conv.conversionTermsCounterPartyFsp?.trim() || null,
            amountType: conv.conversionTermsAmountType?.trim() || null,
            sourceAmount: {
              currency: conv.conversionTermsSourceCurrency?.trim() || null,
              amount: Number(conv.conversionTermsSourceAmount || 0),
            },
            targetAmount: {
              currency: conv.conversionTermsTargetCurrency?.trim() || null,
              amount: Number(conv.conversionTermsTargetAmount || 0),
            },
            expiration: conv.conversionTermsExpiration ? new Date(conv.conversionTermsExpiration) : undefined,
            ilpPacket: conv.ilpPacket?.trim() || null,
            charges: charges.map((c) => ({
              chargeType: c.chargeType?.trim() || null,
              sourceAmount: {
                amount: Number(c.sourceAmount || 0),
                currency: c.sourceCurrency?.trim() || null,
              },
              targetAmount: {
                amount: Number(c.targetAmount || 0),
                currency: c.targetCurrency?.trim() || null,
              },
            })),
          },
          conversionStateChanges: [
            {
              conversionState: conv.conversionStateChangesState?.trim() || null,
              dateTime: conv.conversionStateChangesDateTime
                ? new Date(conv.conversionStateChangesDateTime)
                : undefined,
              reason: conv.conversionStateChangesReason?.trim() || null,
            },
          ],
        },
      },
      fxTransferStateChangeId: conv.fxTransferStateChangeId,
      commitRequestId: conv.commitRequestId,
    };
  }

  private async processConversions(): Promise<void> {
    let lastId = await this.deps.stateModel
      .findOne({ process: this.processName })
      .then((doc) => (doc ? doc.lastId : 0));

    // while (this.isRunning) {
    try {
      const fxStateChanges: FxTransferStateChange[] = await this.deps
        .knexClient('fxTransferStateChange')
        .select('fxTransferStateChangeId', 'commitRequestId')
        .where('fxTransferStateChangeId', '>', lastId)
        .orderBy('fxTransferStateChangeId')
        .limit(this.deps.batchSize);

      if (!fxStateChanges.length) {
        await new Promise((resolve) => setTimeout(resolve, 1000));
        // continue;
      }

      // @ts-expect-error { Object might be undefined }
      const newLastId = fxStateChanges[fxStateChanges.length - 1].fxTransferStateChangeId;
      const mongoBatch: ProcessedConversionRecord[] = [];

      const conversionQuery = `
          SELECT 
            ft.determiningTransferId as transferId,
            fqct.conversionRequestId as conversionRequestId,
            fqct.conversionId as conversionId,
            ft.commitRequestId as conversionCommitRequestId,
            ftsc.transferStateId as conversionState,
            ftf.settlementWindowId as conversionSettlementWindowId,
            fqrct.conversionId as conversionTermsConversionId,
            fqrct.determiningTransferId as conversionTermsDeterminingTransferId,
            fqrct.initiatingFsp as conversionTermsInitiatingFsp,
            fqrct.counterPartyFsp as conversionTermsCounterPartyFsp,
            at2.name as conversionTermsAmountType,
            fqrct.sourceAmount as conversionTermsSourceAmount,
            fqrct.sourceCurrency as conversionTermsSourceCurrency,
            fqrct.targetAmount as conversionTermsTargetAmount,
            fqrct.targetCurrency as conversionTermsTargetCurrency,
            fqrct.expirationDate as conversionTermsExpiration,
            ftsc.transferStateId as conversionStateChangesState,
            ftsc.reason as conversionStateChangesReason,
            ftsc.createdDate as conversionStateChangesDateTime,
            ip.value as ilpPacket,
            ftt.name as conversionType,
            CASE WHEN cp.isProxy = 1 THEN cp.name ELSE NULL END as counterPartyProxy,
            CASE WHEN cp.isProxy = 0 THEN cp.name ELSE ep.name END as counterPartyFsp,
            ftsc.fxTransferStateChangeId,
            ft.commitRequestId
          FROM fxTransfer ft
          JOIN fxQuoteConversionTerms fqct ON fqct.conversionId = ft.commitRequestId
          JOIN fxQuoteResponseConversionTerms fqrct ON fqrct.conversionId = ft.commitRequestId
          JOIN fxTransferStateChange ftsc ON ftsc.commitRequestId = ft.commitRequestId
          LEFT JOIN fxTransferFulfilment ftf ON ftf.commitRequestId = ft.commitRequestId
          JOIN ilpPacket ip ON ip.transferId = ft.determiningTransferId
          JOIN amountType at2 ON at2.amountTypeId = fqrct.amountTypeId
          LEFT JOIN fxWatchList fwl ON fwl.commitRequestId = ft.commitRequestId
          JOIN fxTransferType ftt ON fwl.fxTransferTypeId = ftt.fxTransferTypeId
          JOIN fxTransferParticipant ftp ON ftp.commitRequestId = ft.commitRequestId
          LEFT JOIN externalParticipant ep ON ftp.externalParticipantId = ep.externalParticipantId
          INNER JOIN participant AS cp ON cp.participantId = ftp.participantId
          INNER JOIN transferParticipantRoleType ftprt ON ftprt.transferParticipantRoleTypeId = ftp.transferParticipantRoleTypeId
          WHERE ftprt.name = 'COUNTER_PARTY_FSP'
          AND ft.commitRequestId = ?
          AND ftsc.fxTransferStateChangeId = ?
          LIMIT 1;
        `;

      const chargesQuery = `
          SELECT
            ft.determiningTransferId,
            fc.chargeType,
            fc.sourceAmount,
            fc.sourceCurrency,
            fc.targetAmount,
            fc.targetCurrency
          FROM fxTransfer ft
          JOIN fxCharge fc ON fc.conversionId = ft.commitRequestId
          WHERE ft.commitRequestId = ?;
        `;

      for (const row of fxStateChanges) {
        const { fxTransferStateChangeId, commitRequestId } = row;

        const convResult = await this.deps.knexClient.raw(conversionQuery, [commitRequestId, fxTransferStateChangeId]);
        const conv: ConversionRecord = convResult[0][0];
        if (!conv) continue;

        const chargesResult = await this.deps.knexClient.raw(chargesQuery, [commitRequestId]);
        const charges: ChargeRecord[] = chargesResult[0];

        const processedData = await this.processRecord({ ...conv, fxTransferStateChangeId, commitRequestId }, charges);
        if (processedData) {
          mongoBatch.push(processedData);
        }
      }

      if (mongoBatch.length > 0) {
        try {
          await this.deps.transactionModel.insertMany(mongoBatch);
          this.deps.logger.info(`Inserted ${mongoBatch.length} documents into conversions collection`);
        } catch (error) {
          this.deps.logger.error(`Bulk insert failed for ${this.processName}`, error);
        }
      }

      await this.deps.stateModel.updateOne(
        { process: this.processName },
        { $set: { lastId: newLastId, updatedAt: new Date() } },
        { upsert: true },
      );
      lastId = newLastId;
      this.deps.logger.info(`Processed up to fxTransferStateChangeId ${lastId}`);
    } catch (error) {
      this.deps.logger.error(`Error in ${this.processName}`, error);
      await new Promise((resolve) => setTimeout(resolve, 5000));
    }
    // }
  }
}
