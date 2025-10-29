import { Knex } from 'knex';
import { LogMethods, LogContext } from '../utils/types';
import { Model } from 'mongoose';
import { ISettlement, IState, ITransaction } from '../schemas';

export interface IAggregator {
  start: () => Promise<void>;
  stop: () => Promise<void>;
  getDeps: () => IAggDeps; // for testing
}

export type IAggDeps = {
  // TODO: mysql and mongo deps here
  knexClient: Knex;
  transactionModel: Model<ITransaction>;
  stateModel: Model<IState>;
  settlementModel: Model<ISettlement>;
  batchSize: number;
  timeout: number;
  logger: ILogger;
};

export interface ILogger extends LogMethods {
  child(context?: LogContext): ILogger;
}

export interface TransferStateChange {
  transferId: string;
  transferStateChangeId: number;
}

export interface Record {
  transferId: string;
  transactionId: string;
  sourceAmount?: number;
  sourceCurrency?: string;
  targetAmount?: number;
  targetCurrency?: string;
  baseUseCase: string;
  createdAt: Date;
  amount?: number;
  currency?: string;
  transferStateChangeId: number;
  transferStateChangeState: string;
  transferStateEnum: string;
  transferStateChangeReason?: string;
  transferStateChangeDateTime: Date;
  transactionType: string;
  transactionSubScenario: string;
  transactionInitiator: string;
  transactionInitiatorType: string;
  errorCode?: string;
  errorDescription?: string;
  payerDFSP?: string;
  payerDFSPProxy?: string;
  payerDesc: string;
  payeeDFSP?: string;
  payeeDFSPProxy?: string;
  payeeDesc: string;
  payerPartyIdType?: string;
  payerPartyIdentifier?: string;
  payerPartyName?: string;
  payeePartyIdType?: string;
  payeePartyIdentifier?: string;
  payeePartyName?: string;
  quoteId: string;
  quoteRequestAmountType: string;
  quoteRequestCurrency?: string;
  quoteRequestAmount?: number;
  transferTermsTransferAmount?: number;
  transferTermsTransferCurrency?: string;
  transferTermsPayeeReceiveCurrency?: string;
  transferTermsPayeeReceiveAmount?: number;
  transferTermsPayeeFspFeeAmount?: number;
  transferTermsPayeeFspFeeCurrency?: string;
  transferTermsPayeeFspCommissionCurrency?: string;
  transferTermsPayeeFspCommissionAmount?: number;
  transferTermsExpiration: Date;
  ilpPacket: string;
  positionChangesParticipantName?: string;
  positionChangesCurrency?: string;
  positionChangesLedgerType?: string;
  positionChangesDateTime?: Date;
  positionChangesUpdatedValue?: number;
  positionChangesChange?: number;
  transferSettlementWindowId: bigint;
  geoCodeLatitude?: number;
  geoCodeLongitude?: number;
}

// eslint-disable-next-line @typescript-eslint/no-explicit-any
export type KnexRawResult = [Record[], any];
