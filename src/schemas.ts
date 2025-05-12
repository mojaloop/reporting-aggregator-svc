import { Schema, model, Model } from 'mongoose';

interface IParty {
  partyIdType: string;
  partyIdentifier: string;
  partyName?: string;
  supportedCurrencies?: string;
}

interface IQuoteRequest {
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
}

interface ITransferTerms {
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
}

interface IConversionTerms {
  conversionId?: string;
  determiningTransferId?: string;
  initiatingFsp?: string;
  counterPartyFsp?: string;
  amountType?: string;
  sourceAmount: {
    currency?: string;
    amount?: number;
  };
  targetAmount: {
    currency?: string;
    amount?: number;
  };
  expiration?: Date;
  charges: Array<{
    chargeType?: string;
    sourceAmount: {
      currency?: string;
      amount?: number;
    };
    targetAmount: {
      currency?: string;
      amount?: number;
    };
  }>;
  ilpPacket?: string;
}

interface IConversion {
  conversionRequestId?: string;
  conversionId?: string;
  conversionCommitRequestId?: string;
  conversionState?: string;
  conversionStateChanges: Array<{
    conversionState?: string;
    dateTime?: Date;
    reason?: string;
  }>;
  counterPartyFSP?: string;
  conversionType?: string;
  conversionSettlementWindowId?: number;
  conversionTerms: IConversionTerms;
}

export interface ITransaction {
  transferId: string;
  transactionId?: string;
  sourceAmount?: number;
  sourceCurrency: string;
  targetAmount?: number;
  targetCurrency: string;
  createdAt: Date;
  lastUpdated?: Date;
  transferState?: string;
  transferStateChanges: Array<{
    transferState?: string;
    dateTime?: Date;
    reason?: string;
  }>;
  transactionType: string;
  errorCode?: string;
  transferSettlementWindowId?: number;
  payerDFSP: string;
  payerDFSPProxy?: string;
  payeeDFSP: string;
  payeeDFSPProxy?: string;
  positionChanges: Array<{
    participantName?: string;
    currency?: string;
    ledgerType?: string;
    dateTime?: Date;
    updatedPosition?: number;
    change?: number;
  }>;
  payerParty: IParty;
  payeeParty: IParty;
  quoteRequest: IQuoteRequest;
  transferTerms: ITransferTerms;
  conversions: IConversion[];
}

export interface ISettlement {
  settlementStateChangeId: number;
  settlementId: number;
  createdAt: Date;
  lastUpdatedAt: Date;
  settlementStatus?: string | null;
  settlementModel?: string | null;
  settlementWindows: Array<{
    settlementWindowId: number;
  }>;
  settlementStateChange: Array<{
    reason?: string | null;
    status?: string | null;
    dateTime?: Date;
  }>;
}

export interface IState {
  process: string;
  lastId: number;
  updatedAt: Date;
}

const PartySchema = new Schema<IParty>(
  {
    partyIdType: { type: String, index: true },
    partyIdentifier: { type: String, index: true },
    partyName: String,
    supportedCurrencies: String,
  },
  { _id: false, versionKey: false },
);

const QuoteRequestSchema = new Schema<IQuoteRequest>(
  {
    quoteId: String,
    amountType: String,
    amount: {
      currency: String,
      amount: Number,
    },
    fees: {
      currency: String,
      amount: Number,
    },
  },
  { _id: false, versionKey: false },
);

const TransferTermsSchema = new Schema<ITransferTerms>(
  {
    transferAmount: {
      currency: String,
      amount: Number,
    },
    payeeReceiveAmount: {
      currency: String,
      amount: Number,
    },
    payeeFspFee: {
      currency: String,
      amount: Number,
    },
    payeeFspCommission: {
      currency: String,
      amount: Number,
    },
    expiration: Date,
    geoCode: {
      latitude: String,
      longitude: String,
    },
    ilpPacket: String,
  },
  { _id: false, versionKey: false },
);

const ConversionTermsSchema = new Schema<IConversionTerms>(
  {
    conversionId: String,
    determiningTransferId: String,
    initiatingFsp: String,
    counterPartyFsp: String,
    amountType: String,
    sourceAmount: {
      currency: String,
      amount: Number,
    },
    targetAmount: {
      currency: String,
      amount: Number,
    },
    expiration: Date,
    charges: [
      {
        chargeType: String,
        sourceAmount: {
          currency: String,
          amount: Number,
        },
        targetAmount: {
          currency: String,
          amount: Number,
        },
        _id: false,
      },
    ],
    ilpPacket: String,
  },
  { _id: false, versionKey: false },
);

const ConversionSchema = new Schema<IConversion>(
  {
    conversionRequestId: String,
    conversionId: String,
    conversionCommitRequestId: String,
    conversionState: String,
    conversionStateChanges: [
      {
        conversionState: String,
        dateTime: Date,
        reason: String,
        _id: false,
      },
    ],
    counterPartyFSP: String,
    conversionType: String,
    conversionSettlementWindowId: Number,
    conversionTerms: ConversionTermsSchema,
  },
  { _id: false, versionKey: false },
);

const TransactionSchema = new Schema<ITransaction>(
  {
    transferId: { type: String, index: true },
    transactionId: String,
    sourceAmount: Number,
    sourceCurrency: { type: String, index: true },
    targetAmount: Number,
    targetCurrency: { type: String, index: true },
    createdAt: { type: Date, index: true },
    lastUpdated: Date,
    transferState: { type: String, index: true },
    transferStateChanges: [
      {
        transferState: String,
        dateTime: Date,
        reason: String,
        _id: false,
      },
    ],
    transactionType: { type: String, index: true },
    errorCode: { type: String, index: true },
    transferSettlementWindowId: Number,
    payerDFSP: { type: String, index: true },
    payerDFSPProxy: { type: String, index: true },
    payeeDFSP: { type: String, index: true },
    payeeDFSPProxy: { type: String, index: true },
    positionChanges: [
      {
        participantName: String,
        currency: String,
        ledgerType: String,
        dateTime: Date,
        updatedPosition: Number,
        change: Number,
        _id: false,
      },
    ],
    payerParty: PartySchema,
    payeeParty: PartySchema,
    quoteRequest: QuoteRequestSchema,
    transferTerms: TransferTermsSchema,
    conversions: [ConversionSchema],
  },
  { versionKey: false, timestamps: false },
);

const StateSchema = new Schema<IState>(
  {
    process: { type: String, required: true, unique: true },
    lastId: { type: Number, required: true },
    updatedAt: { type: Date, default: Date.now },
  },
  { versionKey: false },
);

const SettlementSchema = new Schema<ISettlement>(
  {
    settlementStateChangeId: { type: Number, required: true },
    settlementId: { type: Number, required: true, unique: true },
    createdAt: { type: Date, required: true },
    lastUpdatedAt: { type: Date, required: true },
    settlementStatus: String,
    settlementModel: String,
    settlementWindows: [
      {
        settlementWindowId: Number,
      },
    ],
    settlementStateChange: [
      {
        reason: String,
        status: String,
        dateTime: Date,
      },
    ],
  },
  { collection: 'settlement', strict: false },
);

export const TransactionModel: Model<ITransaction> = model<ITransaction>('Transaction', TransactionSchema);
export const StateModel: Model<IState> = model<IState>('State', StateSchema);
export const SettlementModel: Model<ISettlement> = model<ISettlement>('Settlement', SettlementSchema);
