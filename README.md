[![Crypto](https://img.shields.io/badge/Ethereum-3C3C3D?style=for-the-badge&logo=Ethereum&logoColor=white)]()
[![Language](https://img.shields.io/badge/solidity-%3E%3D%200.8.0-lightgrey)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)


Smart_contract_adress : 0x60671f198f97d352c3a99a800bdf7a6a51e8df59f6586df6afc9985da19732c7

# Install

## Commands to use :

    - git clone https://github.com/KirihimeNatsuki/Marketplace_eval.git
    - npm install
    - npm i truffle
    - npm i dotenv
    - npm i @truffle/hdwallet-provider
    
## Configure the project :

Create a .env file like this : 

       API_KEY_ALCHEMY_MUMBAI= YOUR ALCHEMY MUMBAI API KEY
       PASS_PHRASE= YOUR METAMASK PASS_PHRASE
 
# How to use :

## Deploy the project :

After installing the project you can use these commands to deploy the contract :

    - truffle compile
    - truffle deploy --network mumbai

# Use different blockchain :

To use for example a different blockchain like goerli, you can decoment the goerli part in your network config in `truffle-config.js`.

After that you can add a new variable in both `truffle-config.js` and your .env file like this :

  In .env :
    - ``API_KEY_ALCHEMY_GOERLI= YOUR ALCHEMY GOERLI API KEY``

  In `truffle-config.js`:
    - ```const API_KEY_ALCHEMY_GOERLI= process.env["API_KEY_ALCHEMY_GOERLI"];```

###### Made by KirihimeNatsuki alias Enzo by ❤️.
