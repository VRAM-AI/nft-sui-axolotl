# VRAM OG NFT

A Sui-based NFT collection with a total supply of 3,333 tokens, featuring whitelist and public minting capabilities.

## Overview

This project implements an NFT collection on the Sui blockchain using the Kiosk standard. The collection offers both whitelist and public minting options, with additional features for image reveals and royalty management.

## Collection Details

- **Total Supply**: 3,333 NFTs
- **Public Mint Price**: 15 SUI
- **Platform**: Sui Blockchain
- **Standard**: Kiosk

## Features

### For Users
- **Whitelist Mint**: Mint NFTs if your wallet is whitelisted
- **Public Mint**: Mint NFTs at the public price of 15 SUI
- **Reveal Function**: Update your NFT's image hash if the admin has added a new image hash for your wallet

### For Administrators
- **Whitelist Management**
  - Add users to whitelist
  - Remove users from whitelist
- **Image Hash Management**
  - Add new image hashes for specific wallets
  - Remove image hashes for specific wallets
- **Financial Management**
  - Withdraw SUI from the contract
  - Withdraw royalties from the contract

## Getting Started

### Prerequisites
- Sui CLI installed
- A Sui wallet with sufficient SUI for gas fees
- Node.js and npm (for development)

### Installation
1. Clone the repository:
```bash
git clone https://github.com/yourusername/vram-nft.git
cd vram-nft
```

2. Install dependencies:
```bash
npm install
```

3. Configure your environment:
```bash
cp .env.example .env
# Edit .env with your configuration
```

4. Build the project:
```bash
npm run build
```

## Usage

### For Users

#### Whitelist Minting
1. Ensure your wallet is whitelisted
2. Connect your wallet to the dApp
3. Click "Whitelist Mint"
4. Confirm the transaction

#### Public Minting
1. Connect your wallet to the dApp
2. Ensure you have 15 SUI available
3. Click "Public Mint"
4. Confirm the transaction

#### Revealing Your NFT
1. Wait for admin to add your image hash
2. Connect your wallet
3. Click "Reveal"
4. Confirm the transaction

### For Administrators

#### Managing Whitelist
```bash
# Add users to whitelist
sui client call --function addWhiteList --module vram_nft --package <package-id> --args <user-wallets>

# Remove users from whitelist
sui client call --function removeWhiteList --module vram_nft --package <package-id> --args <user-wallets>
```

#### Managing Image Hashes
```bash
# Add image hashes
sui client call --function addImgHashList --module vram_nft --package <package-id> --args <wallet-image-pairs>

# Remove image hashes
sui client call --function removeImgHashList --module vram_nft --package <package-id> --args <wallet-image-pairs>
```

#### Financial Operations
```bash
# Withdraw SUI
sui client call --function withdrawSui --module vram_nft --package <package-id>

# Withdraw royalties
sui client call --function withdrawRoyalty --module vram_nft --package <package-id>
```

## Contract Functions

### User Functions
- `mint()`: Mint an NFT (whitelist)
- `publicMint()`: Mint an NFT at public price
- `reveal()`: Update NFT image hash

### Admin Functions
- `addWhiteList(address[])`: Add wallets to whitelist
- `removeWhiteList(address[])`: Remove wallets from whitelist
- `addImgHashList((address, string)[])`: Add wallet-image pairs
- `removeImgHashList((address, string)[])`: Remove wallet-image pairs
- `withdrawSui()`: Withdraw collected SUI
- `withdrawRoyalty()`: Withdraw royalties

## Security

### Best Practices
1. **Wallet Security**
   - Never share private keys
   - Use hardware wallets for large amounts
   - Keep backup phrases secure

2. **Contract Security**
   - Admin functions are restricted to authorized addresses
   - Whitelist operations are atomic
   - Royalty withdrawals require admin privileges

3. **Transaction Security**
   - Always verify transaction details before signing
   - Check gas fees before transactions
   - Use trusted RPC endpoints

### Known Limitations
- Whitelist operations are not reversible
- Image hash updates require admin intervention
- Royalty calculations are fixed at contract deployment

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

```
MIT License

Copyright (c) 2024 VRAM OG NFT

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

