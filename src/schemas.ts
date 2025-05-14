import { Schema, model, Model } from 'mongoose';

interface IAmount {
  amount?: number;
  currency?: string;
}

interface ITransferStateChange {
  transferState: string;
  dateTime: Date;
  reason?: string;
}

interface IParty {
  partyIdType?: string;
  partyIdentifier?: string;
  partyName?: string;
  supportedCurrencies?: string;
}

interface IQuoteRequest {
  quoteId: string;
  amountType: string;
  amount: IAmount;
  fees: IAmount;
}

interface ITransferTerms {
  transferAmount: IAmount;
  payeeReceiveAmount?: IAmount;
  payeeFspFee?: IAmount;
  payeeFspCommission?: IAmount;
  expiration: Date;
  geoCode: {
    latitude?: string;
    longitude?: string;
  };
  ilpPacket: string;
}

interface IPositionChange {
  change?: number;
  currency?: string;
  dateTime?: Date;
  ledgerType?: string;
  participantName?: string;
  updatedPosition?: number;
}

interface ICharge {
  chargeType: string;
  sourceAmount: IAmount;
  targetAmount: IAmount;
}

interface IConversionTerms {
  amountType?: string;
  charges: Array<ICharge>;
  counterPartyFsp?: string;
  conversionId?: string;
  determiningTransferId?: string;
  expiration?: Date;
  ilpPacket: string;
  initiatingFsp?: string;
  sourceAmount?: IAmount;
  targetAmount?: IAmount;
}

export interface IConversion {
  conversionCommitRequestId: string;
  conversionRequestId: string;
  conversionId?: string;
  conversionState: string;
  conversionStateChanges: Array<{
    conversionState: string;
    dateTime: Date;
    reason?: string;
  }>;
  counterPartyFSP: string;
  counterPartyProxy?: string;
  conversionType: string;
  conversionSettlementWindowId?: bigint;
  conversionTerms: IConversionTerms;
}

export interface ITransaction {
  transferId: string;
  transactionId: string;
  sourceAmount?: number;
  sourceCurrency?: string;
  targetAmount?: number;
  targetCurrency?: string;
  transferState: string;
  transferStateChanges: Array<ITransferStateChange>;
  transactionType: string;
  baseUseCase: string;
  errorCode?: string;
  transferSettlementWindowId?: bigint;
  payerDFSP?: string;
  payerDFSPProxy?: string;
  payeeDFSP?: string;
  payeeDFSPProxy?: string;
  positionChanges: Array<IPositionChange>;
  payerParty?: IParty;
  payeeParty?: IParty;
  quoteRequest: IQuoteRequest;
  transferTerms: ITransferTerms;
  conversions?: {
    payer?: IConversion;
    payee?: IConversion;
  };
  createdAt: Date;
  lastUpdated: Date;
}

interface ISettlementStateChange {
  reason?: string;
  status: string;
  dateTime: Date;
}

interface ISettlementWindow {
  settlementWindowId: bigint;
}

export interface ISettlement {
  settlementId: bigint;
  createdAt: Date;
  lastUpdatedAt: Date;
  settlementStatus: string;
  settlementModel: string;
  settlementWindows: Array<ISettlementWindow>;
  settlementStateChange: Array<ISettlementStateChange>;
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
      amount: Schema.Types.Double,
    },
    fees: {
      currency: String,
      amount: Schema.Types.Double,
    },
  },
  { _id: false, versionKey: false },
);

const TransferTermsSchema = new Schema<ITransferTerms>(
  {
    transferAmount: {
      currency: String,
      amount: Schema.Types.Double,
    },
    payeeReceiveAmount: {
      currency: String,
      amount: Schema.Types.Double,
    },
    payeeFspFee: {
      currency: String,
      amount: Schema.Types.Double,
    },
    payeeFspCommission: {
      currency: String,
      amount: Schema.Types.Double,
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
      amount: Schema.Types.Double,
    },
    targetAmount: {
      currency: String,
      amount: Schema.Types.Double,
    },
    expiration: Date,
    charges: [
      {
        chargeType: String,
        sourceAmount: {
          currency: String,
          amount: Schema.Types.Double,
        },
        targetAmount: {
          currency: String,
          amount: Schema.Types.Double,
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
    conversionCommitRequestId: String,
    conversionId: String,
    conversionRequestId: String,
    conversionSettlementWindowId: Schema.Types.BigInt,
    conversionState: String,
    conversionStateChanges: [
      {
        conversionState: String,
        dateTime: Date,
        reason: String,
        _id: false,
      },
    ],
    conversionTerms: ConversionTermsSchema,
    conversionType: String,
    counterPartyFSP: String,
    counterPartyProxy: String,
  },
  { _id: false, versionKey: false },
);

const TransactionSchema = new Schema<ITransaction>(
  {
    transferId: { type: String, index: true },
    transactionId: String,
    sourceAmount: Schema.Types.Double,
    sourceCurrency: { type: String, index: true },
    targetAmount: Schema.Types.Double,
    targetCurrency: { type: String, index: true },
    createdAt: { type: Date, index: true },
    baseUseCase: String,
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
    transferSettlementWindowId: Schema.Types.BigInt,
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
        updatedPosition: Schema.Types.Double,
        change: Schema.Types.Double,
        _id: false,
      },
    ],
    payerParty: PartySchema,
    payeeParty: PartySchema,
    quoteRequest: QuoteRequestSchema,
    transferTerms: TransferTermsSchema,
    conversions: {
      payer: ConversionSchema,
      payee: ConversionSchema,
    },
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
    settlementId: { type: Schema.Types.BigInt, required: true, unique: true },
    createdAt: { type: Date, required: true },
    lastUpdatedAt: { type: Date, required: true },
    settlementStatus: String,
    settlementModel: String,
    settlementWindows: [
      {
        settlementWindowId: Schema.Types.BigInt,
        _id: false,
      },
    ],
    settlementStateChange: [
      {
        reason: String,
        status: String,
        dateTime: Date,
        _id: false,
      },
    ],
  },
  { collection: 'settlements', strict: false, versionKey: false },
);

export const TransactionModel: Model<ITransaction> = model<ITransaction>('Transaction', TransactionSchema);
export const StateModel: Model<IState> = model<IState>('State', StateSchema);
export const SettlementModel: Model<ISettlement> = model<ISettlement>('Settlement', SettlementSchema);
