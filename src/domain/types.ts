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
  transactionId?: string;
  sourceAmount?: number;
  sourceCurrency?: string;
  targetAmount?: number;
  targetCurrency?: string;
  createdAt?: Date;
  amount?: number;
  currency?: string;
  transferStateChangeId?: number;
  transferStateChangeState?: string;
  transferStateChangeReason?: string;
  transferStateChangeDateTime?: Date;
  transactionType?: string;
  errorCode?: string;
  payerDFSP?: string;
  payerDFSPProxy?: string;
  payeeDFSP?: string;
  payeeDFSPProxy?: string;
  payerPartyIdType?: string;
  payerPartyIdentifier?: string;
  payerPartyName?: string;
  payeePartyIdType?: string;
  payeePartyIdentifier?: string;
  payeePartyName?: string;
  quoteId?: string;
  quoteRequestAmountType?: string;
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
  transferTermsExpiration?: Date;
  ilpPacket?: string;
  positionChangesParticipantName?: string;
  positionChangesCurrency?: string;
  positionChangesLedgerType?: string;
  positionChangesDateTime?: Date;
  positionChangesUpdatedValue?: number;
  positionChangesChange?: number;
  transferSettlementWindowId?: number;
  geoCodeLatitude?: number;
  geoCodeLongitude?: number;
}

export interface ProcessedData {
  transferId: string;
  transactionId?: string;
  sourceAmount?: number;
  sourceCurrency?: string;
  targetAmount?: number;
  targetCurrency?: string;
  createdAt?: Date;
  lastUpdated: Date;
  transferState?: string;
  transferStateChanges: Array<{
    transferState?: string;
    dateTime?: Date;
    reason?: string;
  }>;
  transactionType?: string;
  errorCode?: string;
  transferSettlementWindowId?: number;
  payerDFSP?: string;
  payerDFSPProxy?: string;
  payeeDFSP?: string;
  payeeDFSPProxy?: string;
  positionChanges: Array<{
    participantName?: string;
    currency?: string;
    ledgerType?: string;
    dateTime?: Date;
    updatedPosition?: number;
    change?: number;
  }>;
  payerParty: {
    partyIdType?: string;
    partyIdentifier?: string;
    partyName?: string;
    supportedCurrencies?: string;
  };
  payeeParty: {
    partyIdType?: string;
    partyIdentifier?: string;
    partyName?: string;
    supportedCurrencies?: string;
  };
  quoteRequest: {
    quoteId?: string;
    amountType?: string;
    amount: {
      currency?: string;
      amount?: number;
    };
    fees: {
      currency?: string;
      amount?: number;
    };
  };
  transferTerms: {
    transferAmount: {
      currency?: string;
      amount?: number;
    };
    payeeReceiveAmount: {
      currency?: string;
      amount?: number;
    };
    payeeFspFee: {
      currency?: string;
      amount?: number;
    };
    payeeFspCommission: {
      currency?: string;
      amount?: number;
    };
    expiration?: Date;
    geoCode: {
      latitude?: string;
      longitude?: string;
    };
    ilpPacket?: string;
  };
  conversions: any;
}

export type KnexRawResult = [Record[], any];
