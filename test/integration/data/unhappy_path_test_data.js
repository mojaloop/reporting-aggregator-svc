export const unhappyTestData = {
  single_currency_abort: {
    transaction: {
      transferId: '01JVVZ0SBFX5M7B5M1FQTZ2DSE',
      baseUseCase: 'P2P',
      createdAt: new Date('2025-05-22T12:20:49.000Z'),
      errorCode: '3100',
      lastUpdated: new Date('2025-05-22T12:20:50.000Z'),
      payeeDFSP: 'noresponsepayeefsp',
      payeeDFSPProxy: null,
      payeeParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '27713803912',
        partyName: null,
        supportedCurrencies: '',
      },
      payerDFSP: 'testingtoolkitdfsp',
      payerDFSPProxy: null,
      payerParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '44123456789',
        partyName: null,
        supportedCurrencies: '',
      },
      positionChanges: [
        {
          participantName: 'testingtoolkitdfsp',
          currency: 'XXX',
          ledgerType: 'POSITION',
          dateTime: new Date('2025-05-22T12:20:50.000Z'),
          updatedPosition: 600,
          change: -100,
        },
      ],
      quoteRequest: {
        quoteId: '01JVVZ0SB967KPXVPF4G634MSH',
        amountType: 'RECEIVE',
        amount: {
          currency: 'XXX',
          amount: 1,
        },
        fees: {
          currency: '',
          amount: 0,
        },
      },
      sourceAmount: 100,
      sourceCurrency: 'XXX',
      targetAmount: 100,
      targetCurrency: 'XXX',
      transactionId: '01JVVZ0SBFX5M7B5M1FQTZ2DSE',
      transactionType: 'TRANSFER',
      transferSettlementWindowId: null,
      transferState: 'ABORTED_ERROR',
      transferStateChanges: [
        {
          transferState: 'ABORTED_ERROR',
          dateTime: new Date('2025-05-22T12:20:50.000Z'),
          reason: null,
        },
      ],
      transferTerms: {
        transferAmount: {
          currency: 'XXX',
          amount: 1,
        },
        payeeReceiveAmount: {
          currency: 'XXX',
          amount: 1,
        },
        payeeFspFee: {
          currency: 'XXX',
          amount: 0,
        },
        payeeFspCommission: {
          currency: null,
          amount: 0,
        },
        expiration: new Date('2025-05-23T12:20:50.000Z'),
        geoCode: {
          latitude: '',
          longitude: '',
        },
        ilpPacket:
          'DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5',
      },
    },
  },
  single_currency_timeout: {
    transaction: {
      transferId: '01JVVZ0FQYDR1E597MMG006A34',
      baseUseCase: 'P2P',
      createdAt: new Date('2025-05-22T12:20:39.000Z'),
      errorCode: '3303',
      lastUpdated: new Date('2025-05-22T12:20:46.000Z'),
      payeeDFSP: 'noresponsepayeefsp',
      payeeDFSPProxy: null,
      payeeParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '27713803912',
        partyName: null,
        supportedCurrencies: '',
      },
      payerDFSP: 'testingtoolkitdfsp',
      payerDFSPProxy: null,
      payerParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '44123456789',
        partyName: null,
        supportedCurrencies: '',
      },
      positionChanges: [
        {
          participantName: 'testingtoolkitdfsp',
          currency: 'XXX',
          ledgerType: 'POSITION',
          dateTime: new Date('2025-05-22T12:20:46.000Z'),
          updatedPosition: 600,
          change: -1,
        },
      ],
      quoteRequest: {
        quoteId: '01JVVZ0FQX7Y507N5QGRYHHE75',
        amountType: 'RECEIVE',
        amount: {
          currency: 'XXX',
          amount: 1,
        },
        fees: {
          currency: '',
          amount: 0,
        },
      },
      sourceAmount: 1,
      sourceCurrency: 'XXX',
      targetAmount: 1,
      targetCurrency: 'XXX',
      transactionId: '01JVVZ0FQYDR1E597MMG006A34',
      transactionType: 'TRANSFER',
      transferSettlementWindowId: null,
      transferState: 'EXPIRED_RESERVED',
      transferStateChanges: [
        {
          transferState: 'EXPIRED_RESERVED',
          dateTime: new Date('2025-05-22T12:20:46.000Z'),
          reason: 'Transfer expired',
        },
      ],
      transferTerms: {
        transferAmount: {
          currency: 'XXX',
          amount: 1,
        },
        payeeReceiveAmount: {
          currency: 'XXX',
          amount: 1,
        },
        payeeFspFee: {
          currency: 'XXX',
          amount: 0,
        },
        payeeFspCommission: {
          currency: null,
          amount: 0,
        },
        expiration: new Date('2025-05-23T12:20:40.000Z'),
        geoCode: {
          latitude: '',
          longitude: '',
        },
        ilpPacket:
          'DIICYwAAAAAAAABkMjAyNDEwMjkxMTE0MTQzNTIv1lSZPk0mP5Io_nXbsO9zUmQXinvjJbhGwsqc53pARgpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1FqbEVRVk5PTURGRVdUUlhTME5hV1RoWVVrVTBXa01pTENKeGRXOTBaVWxrSWpvaU1ERktRamxFUVZOWk5EZFNUVVEwUzFOS1MwZElVMW8wTUVvaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpRdE1UQXRNamxVTVRFNk1UUTZNVFF1TXpVeVdpSXNJbTV2ZEdVaU9tNTFiR3g5',
      },
    },
  },
  fxTransfer_abort: {},
  fxTransfer_timeout: {},
};
