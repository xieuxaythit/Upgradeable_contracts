# Upgradeable_contracts

<p>
<b>1. Install dependencies</b><br>
<pre>npm install</pre>
</p>

<p><b>Setup .secret.json file in project root as follow:</b><br/>
<pre>
{
    "mnemonic": "&lt;add your mnemonic here&gt;",
    "Wallet": "&lt;the account to deploy contract&gt;",
    "InfuraKey": "&lt;Infurakey for deploying to Ethereum network&gt;",
    "BscScanApiKey": "&lt;Get this key from https://www.bscscan.com/&gt;",
    "EtherscanApiKey": "&lt;Get this key from https://etherscan.io/&gt;"
}
</pre>
</p>

<p>
<b>2. Contract Deployment</b><br/>
</p>

<p><b>Truffle</b><br/>
<pre>
truffle compile --all
truffle migrate --network bsctest
</pre>
</p>

<b>OR</b><br/>

<p><b>Hardhat</b><br/>
<pre>
npx hardhat compile
npx hardhat run ./script/deploy.js --network bsctest
</pre>
</p>

<p>
<b>3. Contract code verification</b><br/>
</p>

<p><b>Truffle</b><br/>
<pre>
npm install -D truffle-plugin-verify
truffle run verify ContractName@&lt;Contract address&gt; --network bsctest
</pre>
</p>

<b>OR</b><br/>

<p><b>Hardhat</b><br/>
<pre>
npm install --save-dev @nomiclabs/hardhat-etherscan
npx hardhat verify DEPLOYED_CONTRACT_ADDRESS --network bsctest
</pre>
</p>
