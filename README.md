# Dbank

DBank is a decentralized banking application running on the Internet Computer (IC), allowing users to deposit, withdraw, and manage their balances securely without traditional financial intermediaries. Built using Motoko and JavaScript, this project demonstrates how smart contracts (canisters) interact with a frontend to provide seamless financial operations.

## Features

* Decentralized banking: Store and manage digital currency without a central authority.

* Deposit & Withdraw: Users can deposit or withdraw funds securely.

* Live Balance Updates: Transactions are reflected in real-time.

* Persistent Storage: User balances are maintained using Internet Computer canisters.

* Interactive UI: A responsive frontend that interacts with the backend canister.

## Technologies Used

* Internet Computer (IC) SDK – Smart contract development

* Motoko – Programming language for smart contracts

* JavaScript – Frontend interaction

* Webpack – Bundling and frontend optimization

## Installation & Setup

### Prerequisites

Ensure you have the following installed:

* DFX SDK (Dfinity command-line tool)

* Node.js and npm

* Git

### Clone the Repository

* git clone https://github.com/your-username/dbank.git
* cd dbank

* Start the Local Replica

* dfx start --background

* Deploy the Canister

* dfx deploy

Once deployed, the backend smart contract (canister) is ready to interact with the frontend.

## Run the Frontend
```bash
npm install  # Install dependencies
npm start    # Start the development server
```

Your Dbank app will be available at:

http://localhost:8080

The backend canister API will be available at:

http://localhost:8000?canisterId={asset_canister_id}

### Usage

* Open the app in your browser at http://localhost:8080.

* Deposit funds to add balance to your account.

* Withdraw funds to reduce your balance.

* View real-time balance updates as transactions are made.

### Deployment to Internet Computer

To deploy on the Internet Computer mainnet, follow these steps:

```bash
dfx canister create --all
dfx deploy --network ic
```

This will register your canister on the Internet Computer, making it accessible via a public canister ID.

### Environment Variables

When deploying the frontend separately, ensure NODE_ENV is set correctly:

```bash
export NODE_ENV=production
```

If using Webpack, you can replace process.env.NODE_ENV in the build process.

### Resources

Internet Computer Documentation: https://internetcomputer.org/docs/home

Internet Computer Installation: https://internetcomputer.org/docs/building-apps/getting-started/install

Motoko Language Guide: https://internetcomputer.org/docs/motoko/main/getting-started/motoko-introduction

DFX SDK Commands: https://internetcomputer.org/docs/building-apps/developer-tools/dfx/

