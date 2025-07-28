# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

### [0.0.6](https://github.com/mojaloop/reporting-aggregator-svc/compare/v0.0.5...v0.0.6) (2025-07-28)


### Chore

* remove log line ([2728f86](https://github.com/mojaloop/reporting-aggregator-svc/commit/2728f86ffa2a3bca7e768283a716b67fa313bcd2))
* **sbom:** update sbom [skip ci] ([bc0d9a8](https://github.com/mojaloop/reporting-aggregator-svc/commit/bc0d9a80c42182da389c3485cb792359444838df))

### [0.0.5](https://github.com/mojaloop/reporting-aggregator-svc/compare/v0.0.4...v0.0.5) (2025-07-22)


### Bug Fixes

* parse if env value is provided ([#5](https://github.com/mojaloop/reporting-aggregator-svc/issues/5)) ([2a0d8e2](https://github.com/mojaloop/reporting-aggregator-svc/commit/2a0d8e2a0515aba397010c3c9845d86d88610606))


### Chore

* **sbom:** update sbom [skip ci] ([6ccd114](https://github.com/mojaloop/reporting-aggregator-svc/commit/6ccd114613eedc4c9478c433e7b87cc2fbd4796a))

### [0.0.4](https://github.com/mojaloop/reporting-aggregator-svc/compare/v0.0.3...v0.0.4) (2025-07-18)


### Features

* **csi-1610:** add option to pass params to mongodb connection ([#3](https://github.com/mojaloop/reporting-aggregator-svc/issues/3)) ([63e450a](https://github.com/mojaloop/reporting-aggregator-svc/commit/63e450a360091f73cfff965215a99a8f2246f6a4))


### Chore

* **sbom:** update sbom [skip ci] ([652379a](https://github.com/mojaloop/reporting-aggregator-svc/commit/652379a7b888f9be484097faf11bcd1ff751db22))

### [0.0.3](https://github.com/mojaloop/reporting-aggregator-svc/compare/v0.0.2...v0.0.3) (2025-07-18)


### Features

* added mysql ssl support ([f3a5047](https://github.com/mojaloop/reporting-aggregator-svc/commit/f3a5047c65b860b7f689d50c688e5c4ec3a33ba8))


### Chore

* ci bump ([0c4b53a](https://github.com/mojaloop/reporting-aggregator-svc/commit/0c4b53a3d4ad597d60491a151c71eb3313d00513))
* deps ([b64df3d](https://github.com/mojaloop/reporting-aggregator-svc/commit/b64df3de58ca2670405183ec40fbac96cf89d10d))
* node upgrade ([8b67f51](https://github.com/mojaloop/reporting-aggregator-svc/commit/8b67f5143a0b7fa9b6c23e88d0af5901b42f2712))
* **sbom:** add initial sbom ([292939e](https://github.com/mojaloop/reporting-aggregator-svc/commit/292939e989e1d71490d815e78508235c46dd1eb7))
* update ci-config-orb-build version ([f77107d](https://github.com/mojaloop/reporting-aggregator-svc/commit/f77107d873a45bce47b37ea756d028f2285e852f))
* update ci-config-orb-build version ([170d80b](https://github.com/mojaloop/reporting-aggregator-svc/commit/170d80b77713f14829a4101c2dbe262590599570))

### 0.0.2 (2025-06-11)


### Documentation

* Created simplified flowcharts for each aggregator (TransferAggregator, SettlementAggregator, FxTransferAggregator) ([80fb28a](https://github.com/mojaloop/reporting-aggregator-svc/commit/80fb28ae6e6e497c3c9203a09f5fb599f1522ce4))


### Chore

* add a test file ([5f67a46](https://github.com/mojaloop/reporting-aggregator-svc/commit/5f67a46ab7e54cc512c9db99dacb73d3cbe20e9c))
* add coverage/ to .gitignore ([67076b7](https://github.com/mojaloop/reporting-aggregator-svc/commit/67076b71ca6c8c4ea243a6ed4128c0bbe085f209))
* add fxTransferAggregator,update schema of settlement model ([61f7b14](https://github.com/mojaloop/reporting-aggregator-svc/commit/61f7b1490b5840c951610dd0f93c59cfae593fe8))
* add gitignore ([66ccc3d](https://github.com/mojaloop/reporting-aggregator-svc/commit/66ccc3d95fa7e4f9e7ac232f4fe8544a0be2b4eb))
* add integration test transferAggregator ([162f97c](https://github.com/mojaloop/reporting-aggregator-svc/commit/162f97c9456183dc1ce93ded931cf575bdfcb9a0))
* create a placeholder for unit test ([64d37e3](https://github.com/mojaloop/reporting-aggregator-svc/commit/64d37e3dcc308f5f0abacbe7b009b9fd30464ed1))
* create settlement aggregator, todo: update mapping ([e47d79a](https://github.com/mojaloop/reporting-aggregator-svc/commit/e47d79a537b5b68f554a72e2dfceb042c87640d2))
* disable ts-check ([427e14e](https://github.com/mojaloop/reporting-aggregator-svc/commit/427e14e99aaf5f2167ad9fff89ad7f292384ccf3))
* fix, date bug for knexClient, update integration tests for transferAggregator ([a01d95c](https://github.com/mojaloop/reporting-aggregator-svc/commit/a01d95c8bcb9f1b9cc70f760ef54a33024c84ddf))
* minor flow fix ([376c631](https://github.com/mojaloop/reporting-aggregator-svc/commit/376c631a76d0b755a790a4a9890faf12ebabd92d))
* remove APP prefix from config ([2a5d283](https://github.com/mojaloop/reporting-aggregator-svc/commit/2a5d283a62bd0e7d525b42d486cb41bf6010504e))
* remove coverage files ([29a37d2](https://github.com/mojaloop/reporting-aggregator-svc/commit/29a37d26f4db680d95c3287c901b1cd049fdb09d))
* setup transfers aggregrator service ([a3040dd](https://github.com/mojaloop/reporting-aggregator-svc/commit/a3040dd2d29da358568f630a105718511c3bb71a))
* update config , and destroy mongo and mysql connection an stop ([bb7025e](https://github.com/mojaloop/reporting-aggregator-svc/commit/bb7025efda374c6671f83c50de1c85fc5424e3e5))
* update integration test ([faf7240](https://github.com/mojaloop/reporting-aggregator-svc/commit/faf7240abea4ec42df44a4c26fa26e0f6ea341a9))
* update integration tests data ([fdefb04](https://github.com/mojaloop/reporting-aggregator-svc/commit/fdefb044ddc5a1e7b1105542a9c93aa32e0f1413))
* update mapping for aggregators ([e684f68](https://github.com/mojaloop/reporting-aggregator-svc/commit/e684f683f1abe091e979610909bd4e563027ab60))
* update package-lock.json ([cfdd7f1](https://github.com/mojaloop/reporting-aggregator-svc/commit/cfdd7f1940e07c8698beb13ebd38a4ff9ac47ecd))
* update package.json ([ebb1fa2](https://github.com/mojaloop/reporting-aggregator-svc/commit/ebb1fa204fb0eb07717432b4adec1d5343ecd191))
