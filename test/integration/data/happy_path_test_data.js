export const happyTestData = {
  single_currency_transfer_type_receive: {
    transaction: {
      transferId: '01JVVYYNASE5P0RW5XK8TNQYT7',
      baseUseCase: 'P2P',
      createdAt: new Date('2025-05-22T12:19:50.000Z'),
      errorCode: null,
      lastUpdated: new Date('2025-05-22T12:19:54.000Z'),
      payeeDFSP: 'payeefsp',
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
          participantName: 'payeefsp',
          currency: 'XXX',
          ledgerType: 'POSITION',
          dateTime: new Date('2025-05-22T12:19:54.000Z'),
          updatedPosition: -100,
          change: -100,
        },
      ],
      quoteRequest: {
        quoteId: '01JVVYYNAGRX8A87APEZAHMPW4',
        amountType: 'RECEIVE',
        amount: {
          currency: 'XXX',
          amount: 100,
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
      transactionId: '01JVVYYNASE5P0RW5XK8TNQYT7',
      transactionType: 'TRANSFER',
      transferSettlementWindowId: 1,
      transferState: 'COMMITTED',
      transferStateChanges: [
        {
          transferState: 'COMMITTED',
          dateTime: new Date('2025-05-22T12:19:54.000Z'),
          reason: null,
        },
      ],
      transferTerms: {
        transferAmount: {
          currency: 'XXX',
          amount: 100,
        },
        payeeReceiveAmount: {
          currency: null,
          amount: 0,
        },
        payeeFspFee: {
          currency: 'XXX',
          amount: 5,
        },
        payeeFspCommission: {
          currency: null,
          amount: 0,
        },
        expiration: new Date('2025-05-22T12:20:42.000Z'),
        geoCode: {
          latitude: '',
          longitude: '',
        },
        ilpPacket:
          'DIICtgAAAAAAD0JAMjAyNTA1MjIxMjIwNDIyNjHl6OjwsTdJV9i-hCObNyvVf4dKUsGCNqWhSX6W98pfvgpnLm1vamFsb29wggJvZXlKeGRXOTBaVWxrSWpvaU1ERktWbFpaV1U1QlIxSllPRUU0TjBGUVJWcEJTRTFRVnpRaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFpaV1U1QlUwVTFVREJTVnpWWVN6aFVUbEZaVkRjaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNamMzTVRNNE1ETTVNVElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJalEwTVRJek5EVTJOemc1SWl3aVpuTndTV1FpT2lKMFpYTjBhVzVuZEc5dmJHdHBkR1JtYzNBaWZYMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJeVZERXlPakl3T2pReUxqSTJNVm9pTENKaGJXOTFiblFpT25zaVlXMXZkVzUwSWpvaU1UQXdJaXdpWTNWeWNtVnVZM2tpT2lKWVdGZ2lmWDA',
      },
    },
  },
  single_currency_transfer_type_receive_with_settlement: {
    transaction: {
      transferId: '01JVVZ9XD7C0YR5E4QZZBN60Z8',
      baseUseCase: 'P2P',
      createdAt: new Date('2025-05-22T12:25:48.000Z'),
      errorCode: null,
      lastUpdated: new Date('2025-05-22T12:25:48.000Z'),
      payeeDFSP: 'testfsp2',
      payeeDFSPProxy: null,
      payeeParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '{$inputs.payeefspIdentifier}',
        partyName: null,
        supportedCurrencies: '',
      },
      payerDFSP: 'payeefsp',
      payerDFSPProxy: null,
      payerParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '17039811902',
        partyName: null,
        supportedCurrencies: '',
      },
      positionChanges: [
        {
          participantName: 'testfsp2',
          currency: 'XXX',
          ledgerType: 'POSITION',
          dateTime: new Date('2025-05-22T12:25:48.000Z'),
          updatedPosition: -285,
          change: -35,
        },
      ],
      quoteRequest: {
        quoteId: '01JVVZ9XD6JH97MNF8EDR7M012',
        amountType: 'RECEIVE',
        amount: {
          currency: 'XXX',
          amount: 35,
        },
        fees: {
          currency: '',
          amount: 0,
        },
      },
      sourceAmount: 35,
      sourceCurrency: 'XXX',
      targetAmount: 35,
      targetCurrency: 'XXX',
      transactionId: '01JVVZ9XD7C0YR5E4QZZBN60Z8',
      transactionType: 'TRANSFER',
      transferSettlementWindowId: 2,
      transferState: 'COMMITTED',
      transferStateChanges: [
        {
          transferState: 'COMMITTED',
          dateTime: new Date('2025-05-22T12:25:48.000Z'),
          reason: null,
        },
      ],
      transferTerms: {
        transferAmount: {
          currency: 'XXX',
          amount: 35,
        },
        payeeReceiveAmount: {
          currency: null,
          amount: 0,
        },
        payeeFspFee: {
          currency: 'XXX',
          amount: 1,
        },
        payeeFspCommission: {
          currency: null,
          amount: 0,
        },
        expiration: new Date('2025-05-22T12:26:48.000Z'),
        geoCode: {
          latitude: '',
          longitude: '',
        },
        ilpPacket:
          'DIICvgAAAAAABVcwMjAyNTA1MjIxMjI2NDgzMDIZCbVsSSOd8Y8ZzOZYoQJL_yQRWG-Q7BGjP1AYM880ZQpnLm1vamFsb29wggJ3ZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphT1ZoRU5rcElPVGROVGtZNFJVUlNOMDB3TVRJaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphT1ZoRU4wTXdXVkkxUlRSUldscENUall3V2pnaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lleVJwYm5CMWRITXVjR0Y1WldWbWMzQkpaR1Z1ZEdsbWFXVnlmU0lzSW1aemNFbGtJam9pZEdWemRHWnpjRElpZlgwc0luQmhlV1Z5SWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSmxlSEJwY21GMGFXOXVJam9pTWpBeU5TMHdOUzB5TWxReE1qb3lOam8wT0M0ek1ESmFJaXdpWVcxdmRXNTBJanA3SW1GdGIzVnVkQ0k2SWpNMUlpd2lZM1Z5Y21WdVkza2lPaUpZV0ZnaWZYMA',
      },
    },
    settlement: {
      settlementId: 2,
      createdAt: new Date('2025-05-22T12:25:56.000Z'),
      lastUpdatedAt: new Date('2025-05-22T12:26:20.000Z'),
      settlementModel: 'DEFAULTDEFERREDNET',
      settlementStateChange: [
        {
          reason: 'All settlement accounts are SETTLED',
          status: 'SETTLED',
          dateTime: new Date('2025-05-22T12:26:20.000Z'),
        },
      ],
      settlementStatus: 'SETTLED',
      settlementWindows: [
        {
          settlementWindowId: 2,
        },
      ],
    },
  },
  single_currency_transfer_type_send: {
    transaction: {
      transferId: '01JVVZ3VGJNN1BY4NK6NWG1FED',
      baseUseCase: 'P2P',
      createdAt: new Date('2025-05-22T12:22:30.000Z'),
      errorCode: null,
      lastUpdated: new Date('2025-05-22T12:22:30.000Z'),
      payeeDFSP: 'payeefsp',
      payeeDFSPProxy: null,
      payeeParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '17039811902',
        partyName: null,
        supportedCurrencies: '',
      },
      payerDFSP: 'payerfsp',
      payerDFSPProxy: null,
      payerParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '17039811901',
        partyName: null,
        supportedCurrencies: '',
      },
      positionChanges: [
        {
          participantName: 'payeefsp',
          currency: 'XXX',
          ledgerType: 'POSITION',
          dateTime: new Date('2025-05-22T12:22:30.000Z'),
          updatedPosition: -620,
          change: -10,
        },
      ],
      quoteRequest: {
        quoteId: '01JVVZ3VNMNKJAD467AQYS2WSC',
        amountType: 'SEND',
        amount: {
          currency: 'XXX',
          amount: 10,
        },
        fees: {
          currency: '',
          amount: 0,
        },
      },
      sourceAmount: 10,
      sourceCurrency: 'XXX',
      targetAmount: 10,
      targetCurrency: 'XXX',
      transactionId: '01JVVZ3VGJNN1BY4NK6NWG1FED',
      transactionType: 'TRANSFER',
      transferSettlementWindowId: 1,
      transferState: 'COMMITTED',
      transferStateChanges: [
        {
          transferState: 'COMMITTED',
          dateTime: new Date('2025-05-22T12:22:30.000Z'),
          reason: null,
        },
      ],
      transferTerms: {
        transferAmount: {
          currency: 'XXX',
          amount: 10,
        },
        payeeReceiveAmount: {
          currency: null,
          amount: 0,
        },
        payeeFspFee: {
          currency: 'XXX',
          amount: 0,
        },
        payeeFspCommission: {
          currency: null,
          amount: 0,
        },
        expiration: new Date('2025-05-22T12:23:30.000Z'),
        geoCode: {
          latitude: '',
          longitude: '',
        },
        ilpPacket:
          'DIICzwAAAAAAAYagMjAyNTA1MjIxMjIzMzAwMjE8HkJ3buBw74v05o9mt3syGXjihaNWOHx5EKzTOLzdVwpnLm1vamFsb29wggKIZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTTFaT1RVNUxTa0ZFTkRZM1FWRlpVekpYVTBNaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTTFaSFNrNU9NVUpaTkU1TE5rNVhSekZHUlVRaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRElpTENKbWMzQkpaQ0k2SW5CaGVXVmxabk53SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEF4SWl3aVpuTndTV1FpT2lKd1lYbGxjbVp6Y0NKOUxDSnVZVzFsSWpvaVVHRjVaWEpHYVhKemRDQlFZWGxsY2t4aGMzUWlmU3dpWlhod2FYSmhkR2x2YmlJNklqSXdNalV0TURVdE1qSlVNVEk2TWpNNk16QXVNREl4V2lJc0ltRnRiM1Z1ZENJNmV5SmhiVzkxYm5RaU9pSXhNQ0lzSW1OMWNuSmxibU41SWpvaVdGaFlJbjE5',
      },
    },
  },
  single_currency_transfer_type_send_with_settlement: {
    transaction: {
      transferId: '01JVVZ3X9BFSJH1BVHNCZKE14R',
      baseUseCase: 'P2P',
      createdAt: new Date('2025-05-22T12:22:32.000Z'),
      errorCode: null,
      lastUpdated: new Date('2025-05-22T12:22:32.000Z'),
      payeeDFSP: 'testfsp1',
      payeeDFSPProxy: null,
      payeeParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '17039811903',
        partyName: null,
        supportedCurrencies: '',
      },
      payerDFSP: 'testfsp2',
      payerDFSPProxy: null,
      payerParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '17039811904',
        partyName: null,
        supportedCurrencies: '',
      },
      positionChanges: [
        {
          participantName: 'testfsp1',
          currency: 'XXX',
          ledgerType: 'POSITION',
          dateTime: new Date('2025-05-22T12:22:32.000Z'),
          updatedPosition: 190,
          change: -10,
        },
      ],
      quoteRequest: {
        quoteId: '01JVVZ3XKT34C4XN84ZN46ET4X',
        amountType: 'SEND',
        amount: {
          currency: 'XXX',
          amount: 10,
        },
        fees: {
          currency: '',
          amount: 0,
        },
      },
      sourceAmount: 10,
      sourceCurrency: 'XXX',
      targetAmount: 10,
      targetCurrency: 'XXX',
      transactionId: '01JVVZ3X9BFSJH1BVHNCZKE14R',
      transactionType: 'TRANSFER',
      transferSettlementWindowId: 1,
      transferState: 'COMMITTED',
      transferStateChanges: [
        {
          transferState: 'COMMITTED',
          dateTime: new Date('2025-05-22T12:22:32.000Z'),
          reason: null,
        },
      ],
      transferTerms: {
        transferAmount: {
          currency: 'XXX',
          amount: 10,
        },
        payeeReceiveAmount: {
          currency: null,
          amount: 0,
        },
        payeeFspFee: {
          currency: 'XXX',
          amount: 0,
        },
        payeeFspCommission: {
          currency: null,
          amount: 0,
        },
        expiration: new Date('2025-05-22T12:23:32.000Z'),
        geoCode: {
          latitude: '',
          longitude: '',
        },
        ilpPacket:
          'DIICzwAAAAAAAYagMjAyNTA1MjIxMjIzMzE5MzDw6ac4LoPSJpAuTV5Ja-03iXkU0F7jQ5OFX2aEvs7iMQpnLm1vamFsb29wggKIZXlKeGRXOTBaVWxrSWpvaU1ERktWbFphTTFoTFZETTBRelJZVGpnMFdrNDBOa1ZVTkZnaUxDSjBjbUZ1YzJGamRHbHZia2xrSWpvaU1ERktWbFphTTFnNVFrWlRTa2d4UWxaSVRrTmFTMFV4TkZJaUxDSjBjbUZ1YzJGamRHbHZibFI1Y0dVaU9uc2ljMk5sYm1GeWFXOGlPaUpVVWtGT1UwWkZVaUlzSW1sdWFYUnBZWFJ2Y2lJNklsQkJXVVZTSWl3aWFXNXBkR2xoZEc5eVZIbHdaU0k2SWtKVlUwbE9SVk5USW4wc0luQmhlV1ZsSWpwN0luQmhjblI1U1dSSmJtWnZJanA3SW5CaGNuUjVTV1JVZVhCbElqb2lUVk5KVTBST0lpd2ljR0Z5ZEhsSlpHVnVkR2xtYVdWeUlqb2lNVGN3TXprNE1URTVNRE1pTENKbWMzQkpaQ0k2SW5SbGMzUm1jM0F4SW4xOUxDSndZWGxsY2lJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJazFUU1ZORVRpSXNJbkJoY25SNVNXUmxiblJwWm1sbGNpSTZJakUzTURNNU9ERXhPVEEwSWl3aVpuTndTV1FpT2lKMFpYTjBabk53TWlKOUxDSnVZVzFsSWpvaVVHRjVaWEpHYVhKemRDQlFZWGxsY2t4aGMzUWlmU3dpWlhod2FYSmhkR2x2YmlJNklqSXdNalV0TURVdE1qSlVNVEk2TWpNNk16RXVPVE13V2lJc0ltRnRiM1Z1ZENJNmV5SmhiVzkxYm5RaU9pSXhNQ0lzSW1OMWNuSmxibU41SWpvaVdGaFlJbjE5',
      },
    },
    settlement: {
      settlementId: 1,
      createdAt: new Date('2025-05-22T12:25:52.000Z'),
      lastUpdatedAt: new Date('2025-05-22T12:26:17.000Z'),
      settlementModel: 'DEFERREDNETXXX',
      settlementStateChange: [
        {
          reason: 'All settlement accounts are SETTLED',
          status: 'SETTLED',
          dateTime: new Date('2025-05-22T12:26:17.000Z'),
        },
      ],
      settlementStatus: 'SETTLED',
      settlementWindows: [
        {
          settlementWindowId: 1,
        },
      ],
    },
  },
  fxTransfer_type_send: {
    transaction: {
      transferId: '01JVVZDGPZ2NQGA7ZJB7XCDK09',
      baseUseCase: 'P2P WITH FX',
      createdAt: new Date('2025-05-22T12:27:59.000Z'),
      errorCode: null,
      lastUpdated: new Date('2025-05-22T12:28:01.000Z'),
      payeeDFSP: 'ttkfxpayee',
      payeeDFSPProxy: null,
      payeeParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '54321001',
        partyName: null,
        supportedCurrencies: '',
      },
      payerDFSP: 'ttkfxpayer',
      payerDFSPProxy: null,
      payerParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '44123456789',
        partyName: null,
        supportedCurrencies: '',
      },
      positionChanges: [
        {
          participantName: 'ttkfxpayee',
          currency: 'XTS',
          ledgerType: 'POSITION',
          dateTime: new Date('2025-05-22T12:28:01.000Z'),
          updatedPosition: -100,
          change: -100,
        },
      ],
      quoteRequest: {
        quoteId: '01JVVZDR6BGHVQHCRS9747K8MH',
        amountType: 'SEND',
        amount: {
          currency: 'XTS',
          amount: 100,
        },
        fees: {
          currency: '',
          amount: 0,
        },
      },
      sourceAmount: 10,
      sourceCurrency: 'XDR',
      targetAmount: 100,
      targetCurrency: 'XTS',
      transactionId: '01JVVZDGPZ2NQGA7ZJB7XCDK09',
      transactionType: 'TRANSFER',
      transferSettlementWindowId: 5,
      transferState: 'COMMITTED',
      transferStateChanges: [
        {
          transferState: 'COMMITTED',
          dateTime: new Date('2025-05-22T12:28:01.000Z'),
          reason: null,
        },
      ],
      transferTerms: {
        transferAmount: {
          currency: 'XTS',
          amount: 100,
        },
        payeeReceiveAmount: {
          currency: 'XTS',
          amount: 100,
        },
        payeeFspFee: {
          currency: 'XTS',
          amount: 0,
        },
        payeeFspCommission: {
          currency: null,
          amount: 0,
        },
        expiration: new Date('2025-05-23T12:27:56.000Z'),
        geoCode: {
          latitude: '',
          longitude: '',
        },
        ilpPacket:
          'DIICYwAAAAAAD0JAMjAyNTA1MjMxMjI3NTYwNzlb87HX_z54swUkVbTudVNwQ2hUqKNha1-F2u78KX-ohwpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFSRWRRV2pKT1VVZEJOMXBLUWpkWVEwUkxNRGtpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphUkZJMlFrZElWbEZJUTFKVE9UYzBOMHM0VFVnaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpVdE1EVXRNak5VTVRJNk1qYzZOVFl1TURjNVdpSXNJbTV2ZEdVaU9tNTFiR3g5',
      },
      conversions: {
        payer: {
          conversionCommitRequestId: '01JVVZDGPYKG97DW9BVSMV69XZ',
          conversionId: '01JVVZDGPYKG97DW9BVSMV69XZ',
          conversionRequestId: '01JVVZDGPX55BMW0DMSC3PYDMF',
          conversionSettlementWindowId: 5,
          conversionState: 'COMMITTED',
          conversionStateChanges: [
            {
              conversionState: 'COMMITTED',
              dateTime: new Date('2025-05-22T12:28:00.000Z'),
              reason: null,
            },
          ],
          conversionTerms: {
            conversionId: '01JVVZDGPYKG97DW9BVSMV69XZ',
            determiningTransferId: '01JVVZDGPZ2NQGA7ZJB7XCDK09',
            initiatingFsp: 'ttkfxpayer',
            counterPartyFsp: 'ttkfxp1',
            amountType: 'SEND',
            sourceAmount: {
              currency: 'XDR',
              amount: 10,
            },
            targetAmount: {
              currency: 'XTS',
              amount: 100,
            },
            expiration: new Date('2025-05-23T12:27:53.000Z'),
            charges: [],
            ilpPacket:
              'DIICYwAAAAAAD0JAMjAyNTA1MjMxMjI3NTYwNzlb87HX_z54swUkVbTudVNwQ2hUqKNha1-F2u78KX-ohwpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsWmFSRWRRV2pKT1VVZEJOMXBLUWpkWVEwUkxNRGtpTENKeGRXOTBaVWxrSWpvaU1ERktWbFphUkZJMlFrZElWbEZJUTFKVE9UYzBOMHM0VFVnaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpVdE1EVXRNak5VTVRJNk1qYzZOVFl1TURjNVdpSXNJbTV2ZEdVaU9tNTFiR3g5',
          },
          conversionType: 'PAYER_CONVERSION',
          counterPartyFSP: 'ttkfxp1',
          counterPartyProxy: null,
        },
      },
    },
  },
  fxTransfer_type_receive: {
    transaction: {
      transferId: '01JVW42Z5QTKBHK30VGJ05GGAP',
      baseUseCase: 'P2P WITH FX',
      createdAt: new Date('2025-05-22T13:49:33.000Z'),
      errorCode: null,
      lastUpdated: new Date('2025-05-22T13:49:34.000Z'),
      payeeDFSP: 'ttkfxpayee',
      payeeDFSPProxy: null,
      payeeParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '54321001',
        partyName: null,
        supportedCurrencies: '',
      },
      payerDFSP: 'ttkfxpayer',
      payerDFSPProxy: null,
      payerParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '44123456789',
        partyName: null,
        supportedCurrencies: '',
      },
      positionChanges: [
        {
          participantName: 'ttkfxpayee',
          currency: 'XTS',
          ledgerType: 'POSITION',
          dateTime: new Date('2025-05-22T13:49:34.000Z'),
          updatedPosition: -300,
          change: -100,
        },
      ],
      quoteRequest: {
        quoteId: '01JVW430ZBPR7AQPE0RKMGXNB5',
        amountType: 'RECEIVE',
        amount: {
          currency: 'XTS',
          amount: 100,
        },
        fees: {
          currency: '',
          amount: 0,
        },
      },
      sourceAmount: 10,
      sourceCurrency: 'XDR',
      targetAmount: 100,
      targetCurrency: 'XTS',
      transactionId: '01JVW42Z5QTKBHK30VGJ05GGAP',
      transactionType: 'TRANSFER',
      transferSettlementWindowId: 5,
      transferState: 'COMMITTED',
      transferStateChanges: [
        {
          transferState: 'COMMITTED',
          dateTime: new Date('2025-05-22T13:49:34.000Z'),
          reason: null,
        },
      ],
      transferTerms: {
        transferAmount: {
          currency: 'XTS',
          amount: 100,
        },
        payeeReceiveAmount: {
          currency: 'XTS',
          amount: 100,
        },
        payeeFspFee: {
          currency: 'XTS',
          amount: 0,
        },
        payeeFspCommission: {
          currency: null,
          amount: 0,
        },
        expiration: new Date('2025-05-23T13:49:27.000Z'),
        geoCode: {
          latitude: '',
          longitude: '',
        },
        ilpPacket:
          'DIICYwAAAAAAD0JAMjAyNTA1MjMxMzQ5MjY5OTNh0wXmKF7nNj-c5VHMhv9gFzwuV-PA7hNnfHIH8_9hcQpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsYzBNbG8xVVZSTFFraExNekJXUjBvd05VZEhRVkFpTENKeGRXOTBaVWxrSWpvaU1ERktWbGMwTXpCYVFsQlNOMEZSVUVVd1VrdE5SMWhPUWpVaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpVdE1EVXRNak5VTVRNNk5EazZNall1T1RreldpSXNJbTV2ZEdVaU9tNTFiR3g5',
      },
      conversions: {
        payer: {
          conversionCommitRequestId: '01JVW42Z5PYHH8SFG82M8HWJ8H',
          conversionId: '01JVW42Z5PYHH8SFG82M8HWJ8H',
          conversionRequestId: '01JVW42Z5N4YQF68B3NA164AZB',
          conversionSettlementWindowId: 5,
          conversionState: 'COMMITTED',
          conversionStateChanges: [
            {
              conversionState: 'COMMITTED',
              dateTime: new Date('2025-05-22T13:49:34.000Z'),
              reason: null,
            },
          ],
          conversionTerms: {
            conversionId: '01JVW42Z5PYHH8SFG82M8HWJ8H',
            determiningTransferId: '01JVW42Z5QTKBHK30VGJ05GGAP',
            initiatingFsp: 'ttkfxpayer',
            counterPartyFsp: 'ttkfxp1',
            amountType: 'RECEIVE',
            sourceAmount: {
              currency: 'XDR',
              amount: 10,
            },
            targetAmount: {
              currency: 'XTS',
              amount: 100,
            },
            expiration: new Date('2025-05-23T13:49:25.000Z'),
            charges: [],
            ilpPacket:
              'DIICYwAAAAAAD0JAMjAyNTA1MjMxMzQ5MjY5OTNh0wXmKF7nNj-c5VHMhv9gFzwuV-PA7hNnfHIH8_9hcQpnLm1vamFsb29wggIcZXlKMGNtRnVjMkZqZEdsdmJrbGtJam9pTURGS1ZsYzBNbG8xVVZSTFFraExNekJXUjBvd05VZEhRVkFpTENKeGRXOTBaVWxrSWpvaU1ERktWbGMwTXpCYVFsQlNOMEZSVUVVd1VrdE5SMWhPUWpVaUxDSndZWGxsWlNJNmV5SndZWEowZVVsa1NXNW1ieUk2ZXlKd1lYSjBlVWxrVkhsd1pTSTZJalUwTXpJeE1EQXhJaXdpY0dGeWRIbEpaR1Z1ZEdsbWFXVnlJam9pVFZOSlUwUk9JaXdpWm5Od1NXUWlPaUowZEd0d1lYbGxaV1p6Y0NKOWZTd2ljR0Y1WlhJaU9uc2ljR0Z5ZEhsSlpFbHVabThpT25zaWNHRnlkSGxKWkZSNWNHVWlPaUkwTkRFeU16UTFOamM0T1NJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklrMVRTVk5FVGlJc0ltWnpjRWxrSWpvaWRIUnJabmh3WVhsbGNpSjlmU3dpWVcxdmRXNTBJanA3SW1OMWNuSmxibU41SWpvaVdGUlRJaXdpWVcxdmRXNTBJam9pTVRBd0luMHNJblJ5WVc1ellXTjBhVzl1Vkhsd1pTSTZiblZzYkN3aVpYaHdhWEpoZEdsdmJpSTZJakl3TWpVdE1EVXRNak5VTVRNNk5EazZNall1T1RreldpSXNJbTV2ZEdVaU9tNTFiR3g5',
          },
          conversionType: 'PAYER_CONVERSION',
          counterPartyFSP: 'ttkfxp1',
          counterPartyProxy: null,
        },
      },
    },
  },
  fxTransfer_type_send_with_settlement: {
    transaction: {
      transferId: '01JW5D7N1M78WRSCN5BZGC8NYW',
      baseUseCase: 'P2P WITH FX',
      createdAt: new Date('2025-05-26T04:22:34.000Z'),
      errorCode: null,
      lastUpdated: new Date('2025-05-26T04:22:35.000Z'),
      payeeDFSP: 'ttkfxpayee',
      payeeDFSPProxy: null,
      payeeParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '54321001',
        partyName: null,
        supportedCurrencies: '',
      },
      payerDFSP: 'ttkfxpayer',
      payerDFSPProxy: null,
      payerParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '44123456789',
        partyName: null,
        supportedCurrencies: '',
      },
      positionChanges: [
        {
          participantName: 'ttkfxpayee',
          currency: 'XTS',
          ledgerType: 'POSITION',
          dateTime: new Date('2025-05-26T04:22:35.000Z'),
          updatedPosition: -500,
          change: -500,
        },
      ],
      quoteRequest: {
        quoteId: '01JW5D7R25DWS4V2BS09RXE4H0',
        amountType: 'SEND',
        amount: {
          currency: 'XTS',
          amount: 500,
        },
        fees: {
          currency: '',
          amount: 0,
        },
      },
      sourceAmount: 10,
      sourceCurrency: 'XDR',
      targetAmount: 500,
      targetCurrency: 'XTS',
      transactionId: '01JW5D7N1M78WRSCN5BZGC8NYW',
      transactionType: 'TRANSFER',
      transferSettlementWindowId: 1,
      transferState: 'COMMITTED',
      transferStateChanges: [
        {
          transferState: 'COMMITTED',
          dateTime: new Date('2025-05-26T04:22:35.000Z'),
          reason: null,
        },
      ],
      transferTerms: {
        transferAmount: {
          currency: 'XTS',
          amount: 500,
        },
        payeeReceiveAmount: {
          currency: 'XTS',
          amount: 500,
        },
        payeeFspFee: {
          currency: 'XTS',
          amount: 0.2,
        },
        payeeFspCommission: {
          currency: 'XTS',
          amount: 0.3,
        },
        expiration: new Date('2025-05-27T04:22:29.000Z'),
        geoCode: {
          latitude: '+13.78',
          longitude: '180',
        },
        ilpPacket:
          'AYIDJwAAAAAATEtAHGcudHRrZnhwYXllZS5tc2lzZG4uNTQzMjEwMDGCAv5leUowY21GdWMyRmpkR2x2Ymtsa0lqb2lNREZLVnpWRU4wNHhUVGM0VjFKVFEwNDFRbHBIUXpoT1dWY2lMQ0p4ZFc5MFpVbGtJam9pTURGS1Z6VkVOMUl5TlVSWFV6UldNa0pUTURsU1dFVTBTREFpTENKd1lYbGxaU0k2ZXlKd1lYSjBlVWxrU1c1bWJ5STZleUp3WVhKMGVVbGtWSGx3WlNJNklrMVRTVk5FVGlJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklqVTBNekl4TURBeElpd2labk53U1dRaU9pSjBkR3RtZUhCaGVXVmxJbjE5TENKd1lYbGxjaUk2ZXlKd1lYSjBlVWxrU1c1bWJ5STZleUp3WVhKMGVVbGtWSGx3WlNJNklrMVRTVk5FVGlJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklqUTBNVEl6TkRVMk56ZzVJaXdpWm5Od1NXUWlPaUowZEd0bWVIQmhlV1Z5SW4wc0luQmxjbk52Ym1Gc1NXNW1ieUk2ZXlKamIyMXdiR1Y0VG1GdFpTSTZleUptYVhKemRFNWhiV1VpT2lKR2FYSnpkRzVoYldVdFZHVnpkQ0lzSW14aGMzUk9ZVzFsSWpvaVRHRnpkRzVoYldVdFZHVnpkQ0o5TENKa1lYUmxUMlpDYVhKMGFDSTZJakU1T0RRdE1ERXRNREVpZlgwc0ltRnRiM1Z1ZENJNmV5SmpkWEp5Wlc1amVTSTZJbGhVVXlJc0ltRnRiM1Z1ZENJNklqVXdNQ0o5TENKMGNtRnVjMkZqZEdsdmJsUjVjR1VpT25zaWMyTmxibUZ5YVc4aU9pSlVVa0ZPVTBaRlVpSXNJbWx1YVhScFlYUnZjaUk2SWxCQldVVlNJaXdpYVc1cGRHbGhkRzl5Vkhsd1pTSTZJa05QVGxOVlRVVlNJbjBzSW1WNGNHbHlZWFJwYjI0aU9pSXlNREkxTFRBMUxUSTNWREEwT2pJeU9qSTVMakkyT1ZvaWZRAA',
      },
      conversions: {
        payer: {
          conversionCommitRequestId: '01JW5D7N1J11P2B0SD6HD6DNWM',
          conversionId: '01JW5D7N1J11P2B0SD6HD6DNWM',
          conversionRequestId: '01JW5D7N0ZFZZSPG8X37A28HYA',
          conversionSettlementWindowId: 1,
          conversionState: 'COMMITTED',
          conversionStateChanges: [
            {
              conversionState: 'COMMITTED',
              dateTime: new Date('2025-05-26T04:22:35.000Z'),
              reason: null,
            },
          ],
          conversionTerms: {
            conversionId: '01JW5D7N1J11P2B0SD6HD6DNWM',
            determiningTransferId: '01JW5D7N1M78WRSCN5BZGC8NYW',
            initiatingFsp: 'ttkfxpayer',
            counterPartyFsp: 'ttkfxp1',
            amountType: 'SEND',
            sourceAmount: {
              currency: 'XDR',
              amount: 10,
            },
            targetAmount: {
              currency: 'XTS',
              amount: 500,
            },
            expiration: new Date('2025-12-25T13:17:10.000Z'),
            charges: [
              {
                chargeType: 'string',
                sourceAmount: {
                  currency: 'XDR',
                  amount: 33,
                },
                targetAmount: {
                  currency: 'XTS',
                  amount: 6000,
                },
              },
            ],
            ilpPacket:
              'AYIDJwAAAAAATEtAHGcudHRrZnhwYXllZS5tc2lzZG4uNTQzMjEwMDGCAv5leUowY21GdWMyRmpkR2x2Ymtsa0lqb2lNREZLVnpWRU4wNHhUVGM0VjFKVFEwNDFRbHBIUXpoT1dWY2lMQ0p4ZFc5MFpVbGtJam9pTURGS1Z6VkVOMUl5TlVSWFV6UldNa0pUTURsU1dFVTBTREFpTENKd1lYbGxaU0k2ZXlKd1lYSjBlVWxrU1c1bWJ5STZleUp3WVhKMGVVbGtWSGx3WlNJNklrMVRTVk5FVGlJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklqVTBNekl4TURBeElpd2labk53U1dRaU9pSjBkR3RtZUhCaGVXVmxJbjE5TENKd1lYbGxjaUk2ZXlKd1lYSjBlVWxrU1c1bWJ5STZleUp3WVhKMGVVbGtWSGx3WlNJNklrMVRTVk5FVGlJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklqUTBNVEl6TkRVMk56ZzVJaXdpWm5Od1NXUWlPaUowZEd0bWVIQmhlV1Z5SW4wc0luQmxjbk52Ym1Gc1NXNW1ieUk2ZXlKamIyMXdiR1Y0VG1GdFpTSTZleUptYVhKemRFNWhiV1VpT2lKR2FYSnpkRzVoYldVdFZHVnpkQ0lzSW14aGMzUk9ZVzFsSWpvaVRHRnpkRzVoYldVdFZHVnpkQ0o5TENKa1lYUmxUMlpDYVhKMGFDSTZJakU1T0RRdE1ERXRNREVpZlgwc0ltRnRiM1Z1ZENJNmV5SmpkWEp5Wlc1amVTSTZJbGhVVXlJc0ltRnRiM1Z1ZENJNklqVXdNQ0o5TENKMGNtRnVjMkZqZEdsdmJsUjVjR1VpT25zaWMyTmxibUZ5YVc4aU9pSlVVa0ZPVTBaRlVpSXNJbWx1YVhScFlYUnZjaUk2SWxCQldVVlNJaXdpYVc1cGRHbGhkRzl5Vkhsd1pTSTZJa05QVGxOVlRVVlNJbjBzSW1WNGNHbHlZWFJwYjI0aU9pSXlNREkxTFRBMUxUSTNWREEwT2pJeU9qSTVMakkyT1ZvaWZRAA',
          },
          conversionType: 'PAYER_CONVERSION',
          counterPartyFSP: 'ttkfxp1',
          counterPartyProxy: null,
        },
      },
    },
    settlement: {
      settlementId: 1,
      createdAt: new Date('2025-05-26T04:38:48.000Z'),
      lastUpdatedAt: new Date('2025-05-26T04:39:10.000Z'),
      settlementModel: 'DEFERREDNETXXX',
      settlementStateChange: [
        {
          reason: 'All settlement accounts are SETTLED',
          status: 'SETTLED',
          dateTime: new Date('2025-05-26T04:39:10.000Z'),
        },
      ],
      settlementStatus: 'SETTLED',
      settlementWindows: [
        {
          settlementWindowId: 1,
        },
      ],
    },
  },
  fxTransfer_type_receive_with_settlement: {
    transaction: {
      transferId: '01JW5DK5AV5YPTN3P37R27FEHJ',
      baseUseCase: 'P2P WITH FX',
      createdAt: new Date('2025-05-26T04:28:49.000Z'),
      errorCode: null,
      lastUpdated: new Date('2025-05-26T04:28:51.000Z'),
      payeeDFSP: 'ttkfxpayee',
      payeeDFSPProxy: null,
      payeeParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '54321001',
        partyName: null,
        supportedCurrencies: '',
      },
      payerDFSP: 'ttkfxpayer',
      payerDFSPProxy: null,
      payerParty: {
        partyIdType: 'MSISDN',
        partyIdentifier: '44123456789',
        partyName: null,
        supportedCurrencies: '',
      },
      positionChanges: [
        {
          participantName: 'ttkfxpayee',
          currency: 'XTS',
          ledgerType: 'POSITION',
          dateTime: new Date('2025-05-26T04:28:51.000Z'),
          updatedPosition: -1000,
          change: -500,
        },
      ],
      quoteRequest: {
        quoteId: '01JW5DK7JEDDA4NECFEFEQ1R0N',
        amountType: 'RECEIVE',
        amount: {
          currency: 'XTS',
          amount: 500,
        },
        fees: {
          currency: '',
          amount: 0,
        },
      },
      sourceAmount: 10,
      sourceCurrency: 'XDR',
      targetAmount: 500,
      targetCurrency: 'XTS',
      transactionId: '01JW5DK5AV5YPTN3P37R27FEHJ',
      transactionType: 'TRANSFER',
      transferSettlementWindowId: 1,
      transferState: 'COMMITTED',
      transferStateChanges: [
        {
          transferState: 'COMMITTED',
          dateTime: new Date('2025-05-26T04:28:51.000Z'),
          reason: null,
        },
      ],
      transferTerms: {
        transferAmount: {
          currency: 'XTS',
          amount: 500.5,
        },
        payeeReceiveAmount: {
          currency: 'XTS',
          amount: 500,
        },
        payeeFspFee: {
          currency: 'XTS',
          amount: 0.2,
        },
        payeeFspCommission: {
          currency: 'XTS',
          amount: 0.3,
        },
        expiration: new Date('2025-05-27T04:28:45.000Z'),
        geoCode: {
          latitude: '90',
          longitude: '+130.69',
        },
        ilpPacket:
          'AYID1wAAAAAATF7IHGcudHRrZnhwYXllZS5tc2lzZG4uNTQzMjEwMDGCA65leUowY21GdWMyRmpkR2x2Ymtsa0lqb2lNREZLVnpWRVN6VkJWalZaVUZST00xQXpOMUl5TjBaRlNFb2lMQ0p4ZFc5MFpVbGtJam9pTURGS1Z6VkVTemRLUlVSRVFUUk9SVU5HUlVaRlVURlNNRTRpTENKd1lYbGxaU0k2ZXlKd1lYSjBlVWxrU1c1bWJ5STZleUp3WVhKMGVVbGtWSGx3WlNJNklrMVRTVk5FVGlJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklqVTBNekl4TURBeElpd2labk53U1dRaU9pSjBkR3RtZUhCaGVXVmxJbjE5TENKd1lYbGxjaUk2ZXlKd1lYSjBlVWxrU1c1bWJ5STZleUp3WVhKMGVVbGtWSGx3WlNJNklrMVRTVk5FVGlJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklqUTBNVEl6TkRVMk56ZzVJaXdpWm5Od1NXUWlPaUowZEd0bWVIQmhlV1Z5SW4wc0luQmxjbk52Ym1Gc1NXNW1ieUk2ZXlKamIyMXdiR1Y0VG1GdFpTSTZleUptYVhKemRFNWhiV1VpT2lKR2FYSnpkRzVoYldVdFZHVnpkQ0lzSW14aGMzUk9ZVzFsSWpvaVRHRnpkRzVoYldVdFZHVnpkQ0o5TENKa1lYUmxUMlpDYVhKMGFDSTZJakU1T0RRdE1ERXRNREVpZlgwc0ltRnRiM1Z1ZENJNmV5SmxiR2wwWXpFaU9pSnVkV3hzWVNJc0ltRmthWEJwYzJsamFXNW5YelUySWpwbVlXeHpaU3dpWkdWelpYSjFiblJqTnlJNk16Y3lOemt3TVM0NE1qWXhPVEk0TnpBM0xDSmtiMnh2Y21WZk1XVm1Jam90T1RrNE9EVTFORFlzSW5CaGNtbGhkSFZ5T1dZaU9pSkVkV2x6SUcxdmJHeHBkQ0JwWkNCaGJtbHRJaXdpWTNWeWNtVnVZM2tpT2lKWVZGTWlMQ0poYlc5MWJuUWlPaUkxTURBdU5TSjlMQ0owY21GdWMyRmpkR2x2YmxSNWNHVWlPbnNpYzJObGJtRnlhVzhpT2lKVVVrRk9VMFpGVWlJc0ltbHVhWFJwWVhSdmNpSTZJbEJCV1VWU0lpd2lhVzVwZEdsaGRHOXlWSGx3WlNJNklrTlBUbE5WVFVWU0luMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJM1ZEQTBPakk0T2pRMUxqRXpORm9pZlEA',
      },
      conversions: {
        payer: {
          conversionCommitRequestId: '01JW5DK5ATZQPZ2D6310DWB0J3',
          conversionId: '01JW5DK5ATZQPZ2D6310DWB0J3',
          conversionRequestId: '01JW5DK5A7889YXX13TH4G6Y42',
          conversionSettlementWindowId: 1,
          conversionState: 'COMMITTED',
          conversionStateChanges: [
            {
              conversionState: 'COMMITTED',
              dateTime: new Date('2025-05-26T04:28:51.000Z'),
              reason: null,
            },
          ],
          conversionTerms: {
            conversionId: '01JW5DK5ATZQPZ2D6310DWB0J3',
            determiningTransferId: '01JW5DK5AV5YPTN3P37R27FEHJ',
            initiatingFsp: 'ttkfxpayer',
            counterPartyFsp: 'ttkfxp1',
            amountType: 'RECEIVE',
            sourceAmount: {
              currency: 'XDR',
              amount: 10,
            },
            targetAmount: {
              currency: 'XTS',
              amount: 500,
            },
            expiration: new Date('2025-12-25T13:17:10.000Z'),
            charges: [
              {
                chargeType: 'string',
                sourceAmount: {
                  currency: 'XDR',
                  amount: 33,
                },
                targetAmount: {
                  currency: 'XTS',
                  amount: 6000,
                },
              },
            ],
            ilpPacket:
              'AYID1wAAAAAATF7IHGcudHRrZnhwYXllZS5tc2lzZG4uNTQzMjEwMDGCA65leUowY21GdWMyRmpkR2x2Ymtsa0lqb2lNREZLVnpWRVN6VkJWalZaVUZST00xQXpOMUl5TjBaRlNFb2lMQ0p4ZFc5MFpVbGtJam9pTURGS1Z6VkVTemRLUlVSRVFUUk9SVU5HUlVaRlVURlNNRTRpTENKd1lYbGxaU0k2ZXlKd1lYSjBlVWxrU1c1bWJ5STZleUp3WVhKMGVVbGtWSGx3WlNJNklrMVRTVk5FVGlJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklqVTBNekl4TURBeElpd2labk53U1dRaU9pSjBkR3RtZUhCaGVXVmxJbjE5TENKd1lYbGxjaUk2ZXlKd1lYSjBlVWxrU1c1bWJ5STZleUp3WVhKMGVVbGtWSGx3WlNJNklrMVRTVk5FVGlJc0luQmhjblI1U1dSbGJuUnBabWxsY2lJNklqUTBNVEl6TkRVMk56ZzVJaXdpWm5Od1NXUWlPaUowZEd0bWVIQmhlV1Z5SW4wc0luQmxjbk52Ym1Gc1NXNW1ieUk2ZXlKamIyMXdiR1Y0VG1GdFpTSTZleUptYVhKemRFNWhiV1VpT2lKR2FYSnpkRzVoYldVdFZHVnpkQ0lzSW14aGMzUk9ZVzFsSWpvaVRHRnpkRzVoYldVdFZHVnpkQ0o5TENKa1lYUmxUMlpDYVhKMGFDSTZJakU1T0RRdE1ERXRNREVpZlgwc0ltRnRiM1Z1ZENJNmV5SmxiR2wwWXpFaU9pSnVkV3hzWVNJc0ltRmthWEJwYzJsamFXNW5YelUySWpwbVlXeHpaU3dpWkdWelpYSjFiblJqTnlJNk16Y3lOemt3TVM0NE1qWXhPVEk0TnpBM0xDSmtiMnh2Y21WZk1XVm1Jam90T1RrNE9EVTFORFlzSW5CaGNtbGhkSFZ5T1dZaU9pSkVkV2x6SUcxdmJHeHBkQ0JwWkNCaGJtbHRJaXdpWTNWeWNtVnVZM2tpT2lKWVZGTWlMQ0poYlc5MWJuUWlPaUkxTURBdU5TSjlMQ0owY21GdWMyRmpkR2x2YmxSNWNHVWlPbnNpYzJObGJtRnlhVzhpT2lKVVVrRk9VMFpGVWlJc0ltbHVhWFJwWVhSdmNpSTZJbEJCV1VWU0lpd2lhVzVwZEdsaGRHOXlWSGx3WlNJNklrTlBUbE5WVFVWU0luMHNJbVY0Y0dseVlYUnBiMjRpT2lJeU1ESTFMVEExTFRJM1ZEQTBPakk0T2pRMUxqRXpORm9pZlEA',
          },
          conversionType: 'PAYER_CONVERSION',
          counterPartyFSP: 'ttkfxp1',
          counterPartyProxy: null,
        },
      },
    },
    settlement: {
      settlementId: 1,
      createdAt: new Date('2025-05-26T04:38:48.000Z'),
      lastUpdatedAt: new Date('2025-05-26T04:39:10.000Z'),
      settlementModel: 'DEFERREDNETXXX',
      settlementStateChange: [
        {
          reason: 'All settlement accounts are SETTLED',
          status: 'SETTLED',
          dateTime: new Date('2025-05-26T04:39:10.000Z'),
        },
      ],
      settlementStatus: 'SETTLED',
      settlementWindows: [
        {
          settlementWindowId: 1,
        },
      ],
    },
  },
};
