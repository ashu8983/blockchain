# Solidity Smart Contract Projects

This repository contains multiple smart contracts written in Solidity. These contracts explore the basics of storage, contract creation, inheritance, and real-world applications like ETH-to-USD conversion using Chainlink oracles.

---

## 📦 Included Contracts

### 1. [`SimpleStorage.sol`](./SimpleStorage.sol)

A simple smart contract that allows:

- Storing a single favorite number
- Adding people with their name and favorite number
- Retrieving the stored number or a person's number via name

---

### 2. [`StorageFactory.sol`](./StorageFactory.sol)

This contract uses `SimpleStorage` to:

- Deploy multiple `SimpleStorage` contracts dynamically
- Store and retrieve values from specific instances
- Demonstrates **contract creation**, **arrays of contracts**, and **function forwarding**

---

### 3. [`ExtraStorage.sol`](./ExtraStorage.sol)

A contract that **inherits from `SimpleStorage`** and **overrides** the `store` function:

- Adds `+5` to whatever value is stored
- Demonstrates **inheritance** and **function overriding** in Solidity

---

### 4. [`PriceConvertor.sol`](./PriceConvertor.sol)

A **Solidity library** that:

- Fetches real-time ETH/USD price using Chainlink oracles
- Converts ETH (in wei) to USD
- Can be reused in any contract to apply real-world ETH value checks

📍 **Chainlink Price Feed Address Used (Sepolia Testnet):**
`0x694AA1769357215DE4FAC081bf1f309aDC325306`

---

## 🚀 Final Projects

### 5. [`FundMe.sol`](./FundMe.sol) ✅ **PROJECT**

This is one of the main projects built in this repository.

**Features:**
- Accepts ETH only if its USD value is greater than $10
- Uses Chainlink oracle for real ETH/USD conversion
- Stores and tracks funders and their contributions
- Includes a `withdraw()` function restricted to the owner

**Concepts Covered:**
- Libraries (`PriceConvertor`)
- Modifiers (`onlyOwner`)
- Mappings
- Arrays
- Constructor functions

---

### 6. [`PriceConvertor.sol`](./PriceConvertor.sol) ✅ **PROJECT Helper**

This library powers the `FundMe` contract by converting ETH to USD using Chainlink.

**Functions:**
- `getPrice()` – fetch current ETH/USD price
- `getConversionRate(ethAmount)` – convert ETH to USD
- `getVersion()` – return oracle version

---

## 🧪 How to Test or Deploy

### ✅ Remix IDE
All these contracts are fully compatible with [Remix](https://remix.ethereum.org):

1. Copy each file into separate tabs
2. Compile using Solidity ^0.8.0
3. Use JavaScript VM or Injected Provider (MetaMask + Sepolia)
4. Deploy and test interactively

### ✅ Testnet
For `FundMe.sol`, use **Sepolia testnet** and grab ETH from:

- [Chainlink Faucet](https://faucets.chain.link/sepolia)
- [Alchemy Sepolia Faucet](https://sepoliafaucet.com)
- https://cloud.google.com/application/web3/faucet/ethereum/sepolia(this is the best source I used)

---

## 🔒 License

MIT License © 2025  
Built for learning, experimenting, and deploying real smart contracts using Solidity.

---

## 📬 Connect

Want to collaborate or ask questions? Feel free to reach out!

