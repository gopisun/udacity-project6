Libraries used:
----------------
Truffle:  
---------
Turffle is used for development - compiling the migrating the smart contracts to the required environment.  Environments targeted are local gaanache and remix.  It can be used to mainnet by tailoring the truffle-config.js.  It is used for testing also  Automated test scripts are created in the 'test' directory.

hd-wallet:  
----------
Hd wallet is used for accessing the metamask wallet .  Wallet access is required for deploying and executing smart contractgs.

web3:
------
Web3 is used for interacting with ethereum node.  web3 provides a set of API that are used for executing smart contract methods, and deploy samrt contracts .

Infura:
--------
Infura is used for connecting to the ethereum node.

Roles.sol:
-------------
 This is soliidty library creatd as part of this application.  This library is used to provide the basic structure for all roles.  The structure will be the same for all roles like Farmer, Consumer, Distributor and Retailer.  Hence a library is used.  Along with the data structure, methods to add and remove roles are part of the library as well.

IPFS:  No IPFS used.
-----

Install:
--------
The zip file contains smart contracts for supply chain project written in solidity, test scripts, dapp (written in html, CSS and JS) and the server app.  To install, download the zip file and unzip it.  After unzipping go to the project-6 director. Execute the command "npm install" to install the dependencies.  Do "truffle compile" to compile the project.  Bring up the ganache local ethereum network using "truffle develop" command.  Execute "truffle migrate" to deploy the smart contract in the ganache local ethereum network. 

Test:
------
To run the test cases, execute "truffle test.  This will execute the js files in the "test" directory.

Run the dapp:
-------------
Execute "npm run dev" to run the dapp.  The access the app in chrome browser at localhost:3000.  If the port is busy the app would have started at the next available free port.

Deployment in Rinkeby network:
-------------------------------
project-6> truffle migrate --reset --network rinkeby
Warning: Both truffle-config.js and truffle.js were found. Using truffle-config.js.

Compiling your contracts...
===========================
> Everything is up to date, there is nothing to compile.

Warning: Both truffle-config.js and truffle.js were found. Using truffle-config.js.


Migrations dry-run (simulation)        
===============================        
> Network name:    'rinkeby-fork'      
> Network id:      4
> Block gas limit: 29999943 (0x1c9c347)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > block number:        9068164
   > block timestamp:     1628262308
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.806869544
   > gas used:            210237 (0x3353d)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00210237 ETH

   -------------------------------------
   > Total cost:          0.00210237 ETH


2_deploy_contracts.js
=====================

   Replacing 'FarmerRole'
   ----------------------
   > block number:        9068166
   > block timestamp:     1628262311
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.803707524
   > gas used:            288839 (0x46847)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00288839 ETH


   Replacing 'DistributorRole'
   ---------------------------
   > block number:        9068167
   > block timestamp:     1628262313
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.800704014
   > gas used:            300351 (0x4953f)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00300351 ETH


   Replacing 'RetailerRole'
   ------------------------
   > block number:        9068168
   > block timestamp:     1628262315
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.797735064
   > gas used:            296895 (0x487bf)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00296895 ETH


   Replacing 'ConsumerRole'
   ------------------------
   > block number:        9068169
   > block timestamp:     1628262318
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.794363504
   > gas used:            337156 (0x52504)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00337156 ETH


   Replacing 'SupplyChain'
   -----------------------
   > block number:        9068170
   > block timestamp:     1628262325
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.763922774
   > gas used:            3044073 (0x2e72e9)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.03044073 ETH

   -------------------------------------
   > Total cost:          0.04267314 ETH


Summary
=======
> Total deployments:   6
> Final cost:          0.04477551 ETH


Warning: Both truffle-config.js and truffle.js were found. Using truffle-config.js.
Warning: Both truffle-config.js and truffle.js were found. Using truffle-config.js.



Starting migrations...
======================
> Network name:    'rinkeby'
> Network id:      4
> Block gas limit: 29941381 (0x1c8de85)


1_initial_migration.js
======================

   Replacing 'Migrations'
   ----------------------
   > transaction hash:    0x45009603ebb3ce8dbaf8f225427d8505230b89689771fc8a86ffa273fda15655
   > Blocks: 0            Seconds: 4
   > contract address:    0xcB97B28699A0aa4F961399409f07D8D721acf8a4
   > block number:        9068165
   > block timestamp:     1628262333
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.806706544
   > gas used:            226537 (0x374e9)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00226537 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00226537 ETH


2_deploy_contracts.js
=====================

   Replacing 'FarmerRole'
   ----------------------
   > transaction hash:    0x12d1ff4b91ea9dfe262c706c2faebf10c70e6d848126bfdde22f56522791c763
   > Blocks: 0            Seconds: 12
   > contract address:    0x6a42FB81b7F1117762a16C5e4851084820Dea891
   > block number:        9068167
   > block timestamp:     1628262363
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.803204524
   > gas used:            304439 (0x4a537)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00304439 ETH


   Replacing 'DistributorRole'
   ---------------------------
   > transaction hash:    0xa84b318fbe7ba6bf6d779289017d9d9894be99338342a46fbbad63e38618f70b
   > Blocks: 0            Seconds: 12
   > contract address:    0xeA6a35c2fd78D009862f88427e9E147CD3A28A3F
   > block number:        9068168
   > block timestamp:     1628262378
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.800045014
   > gas used:            315951 (0x4d22f)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00315951 ETH


   Replacing 'RetailerRole'
   ------------------------
   > transaction hash:    0x76e1e9548108f9c9ad88d8152a155dbc480348132695cbacb5f8cecf474a3a74
   > Blocks: 0            Seconds: 12
   > contract address:    0x84e78742CD8C78Fe4e5f19C3c8bA62E60F75Aa5c
   > block number:        9068169
   > block timestamp:     1628262393
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.796920064
   > gas used:            312495 (0x4c4af)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00312495 ETH


   Replacing 'ConsumerRole'
   ------------------------
   > transaction hash:    0x8c80108cd00518415566bdc11d232570fe2d67f54cb977d496dfefa8a8ba6882
   > Blocks: 0            Seconds: 12
   > contract address:    0xb8864483621Ce205a91A0309A94E7f4ef50cd946
   > block number:        9068170
   > block timestamp:     1628262408
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.793392504
   > gas used:            352756 (0x561f4)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.00352756 ETH


   Replacing 'SupplyChain'
   -----------------------
   > transaction hash:    0x02d1c2883c19372618043eed2a3e143d8ecc2e4ce504a1e699caad21b76acf5d
   > Blocks: 0            Seconds: 12
   > contract address:    0x00C7330E3b73AFE077cf13663A389EB4c25A55F7
   > block number:        9068171
   > block timestamp:     1628262423
   > account:             0x2Dc65Fd9fBC24fFa00eC3a6aE5764e211A366058
   > balance:             2.761666774
   > gas used:            3172573 (0x3068dd)
   > gas price:           10 gwei
   > value sent:          0 ETH
   > total cost:          0.03172573 ETH


   > Saving migration to chain.
   > Saving artifacts
   -------------------------------------
   > Total cost:          0.04458214 ETH


Summary
=======
> Total deployments:   6
> Final cost:          0.04684751 ETH

