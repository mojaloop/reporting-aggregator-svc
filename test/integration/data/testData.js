export const testData = {
  // _id: '6826d937536fd8bf86886ef5',
  transferId: 'ab1c283a-760e-4bdd-b2c0-6d84a409f339',
  baseUseCase: 'R2P',
  createdAt: new Date('2025-05-16T06:20:29.000Z'),
  errorCode: null,
  lastUpdated: new Date('2025-05-16T06:20:33.000Z'),
  payeeDFSP: 'greenbankfsp',
  payeeDFSPProxy: null,
  payeeParty: {
    partyIdType: 'MSISDN',
    partyIdentifier: '27713803912',
    partyName: null,
    supportedCurrencies: '',
  },
  payerDFSP: 'pinkbankfsp',
  payerDFSPProxy: null,
  payerParty: {
    partyIdType: 'MSISDN',
    partyIdentifier: '44123456789',
    partyName: null,
    supportedCurrencies: '',
  },
  positionChanges: [
    {
      participantName: 'greenbankfsp',
      currency: 'BWP',
      ledgerType: 'POSITION',
      dateTime: new Date('2025-05-16T06:20:33.000Z'),
      updatedPosition: -300.5,
      change: -300.5,
    },
  ],
  quoteRequest: {
    quoteId: '5be15b3c-ea59-4c6e-8470-74ac34fcfb0c',
    amountType: 'RECEIVE',
    amount: {
      currency: 'BWP',
      amount: 300,
    },
    fees: {
      currency: '',
      amount: 0,
    },
  },
  sourceAmount: 300.5,
  sourceCurrency: 'BWP',
  targetAmount: 300.5,
  targetCurrency: 'BWP',
  transactionId: 'ab1c283a-760e-4bdd-b2c0-6d84a409f339',
  transactionType: 'TRANSFER',
  transferSettlementWindowId: 1,
  transferState: 'COMMITTED',
  transferStateChanges: [
    {
      transferState: 'COMMITTED',
      dateTime: new Date('2025-05-16T06:20:33.000Z'),
      reason: null,
    },
  ],
  transferTerms: {
    transferAmount: {
      currency: 'BWP',
      amount: 300.5,
    },
    payeeReceiveAmount: {
      currency: 'BWP',
      amount: 300,
    },
    payeeFspFee: {
      currency: 'BWP',
      amount: 0.2,
    },
    payeeFspCommission: {
      currency: 'BWP',
      amount: 0.3,
    },
    expiration: new Date('2025-05-17T06:20:28.000Z'),
    geoCode: {
      latitude: '90',
      longitude: '180',
    },
    ilpPacket:
      'AYIDHAAAAAAAAHViIWcuZ3JlZW5iYW5rZnNwLm1zaXNkbi4yNzcxMzgwMzkxMoIC7mV5SjBjbUZ1YzJGamRHbHZia2xrSWpvaVlXSXhZekk0TTJFdE56WXdaUzAwWW1Sa0xXSXlZekF0Tm1RNE5HRTBNRGxtTXpNNUlpd2ljWFZ2ZEdWSlpDSTZJalZpWlRFMVlqTmpMV1ZoTlRrdE5HTTJaUzA0TkRjd0xUYzBZV016TkdaalptSXdZeUlzSW5CaGVXVmxJanA3SW5CaGNuUjVTV1JKYm1adklqcDdJbkJoY25SNVNXUlVlWEJsSWpvaVRWTkpVMFJPSWl3aWNHRnlkSGxKWkdWdWRHbG1hV1Z5SWpvaU1qYzNNVE00TURNNU1USWlMQ0ptYzNCSlpDSTZJbWR5WldWdVltRnVhMlp6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUpOVTBsVFJFNGlMQ0p3WVhKMGVVbGtaVzUwYVdacFpYSWlPaUkwTkRFeU16UTFOamM0T1NJc0ltWnpjRWxrSWpvaWNHbHVhMkpoYm10bWMzQWlmU3dpY0dWeWMyOXVZV3hKYm1adklqcDdJbU52YlhCc1pYaE9ZVzFsSWpwN0ltWnBjbk4wVG1GdFpTSTZJa1pwY25OMGJtRnRaUzFVWlhOMElpd2liR0Z6ZEU1aGJXVWlPaUpNWVhOMGJtRnRaUzFVWlhOMEluMHNJbVJoZEdWUFprSnBjblJvSWpvaU1UazROQzB3TVMwd01TSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVFsZFFJaXdpWVcxdmRXNTBJam9pTXpBd0xqVWlmU3dpZEhKaGJuTmhZM1JwYjI1VWVYQmxJanA3SW5OalpXNWhjbWx2SWpvaVZGSkJUbE5HUlZJaUxDSnBibWwwYVdGMGIzSWlPaUpRUVZsRlVpSXNJbWx1YVhScFlYUnZjbFI1Y0dVaU9pSkRUMDVUVlUxRlVpSjlmUQA',
  },
};
