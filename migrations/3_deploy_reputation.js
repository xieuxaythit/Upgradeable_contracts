// migrations/3_deploy_reputation.js
const { deployProxy } = require('@openzeppelin/truffle-upgrades');

const reputation = artifacts.require('ReputationForTesting');

module.exports = async function (deployer) {
  await deployProxy(reputation, { deployer, kind: 'uups' });
};