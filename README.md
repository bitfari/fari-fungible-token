# FARI Fungible Token Standard

This repository contains the spec and smart contracts that implement the FARI fungible token. It also defines the trait used in the [Stacks Improvement Proposal (SIP) for fungible tokens](https://github.com/stacksgov/sips/pull/5).

- [Fungible token trait contract](./contracts/ft-trait.clar)
- [Example token that implements the trait](./contracts/example-token.clar)
- [Unit tests for the contracts](./contracts/token.test.ts)

## Comparison to ERC20

Many of the functions in this contract are built to follow industry best practices. For example, all functions and their signatures are similar to the ERC20 standard on Ethereum. However, the Stacks Blockchain and Clarity smart contracting language have built-in primitives for defining, transfering, and querying fungible tokens. As you can see, the code required to implement a fungible token is quite small.

## About the FARI Token

SIP-010 Fungible Token Standard
Limited Supply of 100M tokens
Six decimal places
20% Premined/80% Mined by the Community
Integrated with the Stacks 2.0 Web Wallet
Integrated with the Stacks 2.0 Block Explorer
Up to 50% discount when shopping at participating stores
Up to 50% discount when booking ad space at the Bitfari Network
Weekly Rewards. Can be used as loyalty token by merchants.
The token is integrated with our fraud detection tech 
to avoid click fraud (expected on the Cervantes release, https://bitfari.org/bitfari-roadmap/)
Governance Token to vote in the DAO Governance for Bitfari Improvement Proposals (BIPs)
Dev, Marketing, Partner and Security Treasury

Full Spec: https://bitfari.org/token/
