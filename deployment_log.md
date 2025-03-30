# VRAM NFT Contract Deployment Log

## Latest Deployment Information

| Property | Value |
|----------|-------|
| **Date & Time** | 2025-03-29T18:41:25+08:00 |
| **Network** | Sui Mainnet |
| **Environment** | https://fullnode.mainnet.sui.io:443 |
| **Deployer Address** | 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 |

## Contract Details

| Property | Value |
|----------|-------|
| **Package ID** | 0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f |
| **Version** | 1 |
| **Digest** | 9YEFQ88WEDv4WsE75bLE9eSBaHvwd6eiC3TMAhwWhLuy |
| **Modules** | kiosk_lock_rule, royalty_rule, vram |

## Transaction Information

| Property | Value |
|----------|-------|
| **Gas Used** | 87924280 MIST (0.087924280 SUI) |

## Implementation Notes

- Deployed Axolotl Protocol for evolving NFTs on Sui blockchain
- Enhanced documentation and branding with VRAM.AI identity
- Includes comprehensive evolution mechanics with on-chain permanence
- Hybrid storage approach using Walrus (decentralized blob storage)
- Full integration with Sui's Kiosk marketplace system
- 5% creator royalty through Sui's transfer policy framework
- Added compliant NFT metadata for marketplace compatibility

## Contract Parameters

| Parameter | Value |
|-----------|-------|
| **Total Supply** | 3,333 NFTs |
| **Initial Mint Price** | 15 SUI |
| **Admin Address** | 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 |
| **Visualization Site** | 0xb747da318c311052b21eddbd46d43a6f04c6689add62f76d58bdd9866a60f3be |

## Public Entry Points

The contract exposes the following main public functions:
- `public_mint`: For public minting with payment
- `whitelist_mint`: For whitelisted addresses to mint
- `reveal_update_nft`: For evolution implementation
- `reveal_display`: For toggling between GPU and character images

## Admin Functions

The contract includes the following admin-only functions:
- `add_whitelist`: Add addresses to the whitelist
- `remove_whitelist`: Remove addresses from the whitelist
- `add_imglist`: Add custom images for NFT evolution
- `add_attrkeys_list`: Add attribute keys for NFT evolution
- `add_attrvalues_list`: Add attribute values for NFT evolution
- `update_nft_admin`: Update NFT properties by admin
- `withdraw_collection_royalty`: Withdraw accrued royalties

## Security Notes

- Admin-only functions are protected with address checks
- Supply limits enforced for both public and whitelist minting
- Royalty enforcement through transfer policy (5%)
- Kiosk lock requirement for marketplace compatibility
- Secure implementation of evolution mechanics

## Post-Deployment Verification

- [x] Package published successfully
- [x] All modules deployed (kiosk_lock_rule, royalty_rule, vram)
- [x] Contract parameters set correctly
- [ ] Test minting operation
- [ ] Test evolution mechanics
- [ ] Test marketplace integration
- [ ] Verify royalty enforcement

## Explorer Links

- [Package on Sui Explorer](https://suiexplorer.com/object/0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f?network=mainnet)

## Previous Deployments

### Deployment on 2025-03-29T16:26:34+08:00

| Property | Value |
|----------|-------|
| **Package ID** | 0xba3ced10c5a171d763186479f75c0dc6879e3813a95f43e096b8929aaee8f734 |
| **Admin Address** | 0xa8125cc1a3c3d425a317d405b4089402cf0a9e20fb8a484a0f98973baec09c0b |
| **Gas Used** | 83121080 MIST (0.083121080 SUI) |

### Historical Deployment Information

#### Deployment Information

| Property | Value |
|----------|-------|
| **Date & Time** | 2025-03-29T16:26:34+08:00 |
| **Network** | Sui Mainnet |
| **Environment** | https://fullnode.mainnet.sui.io:443 |
| **Deployer Address** | 0x0c2b1bd49d0d29cdad7e477f1743f8ecc87dcff274205d8d838b48302896ffe8 |

#### Contract Details

| Property | Value |
|----------|-------|
| **Package ID** | 0xba3ced10c5a171d763186479f75c0dc6879e3813a95f43e096b8929aaee8f734 |
| **Version** | 1 |
| **Digest** | 8btL9scuJgxhYSiq1aYpufSwRSaqLX8MjUFbh1rWwRRU |
| **Modules** | kiosk_lock_rule, royalty_rule, vram |

#### Transaction Information

| Property | Value |
|----------|-------|
| **Gas Used** | 83121080 MIST (0.083121080 SUI) |

#### Implementation Notes

- Deployed Axolotl Standard for evolving NFTs on Sui blockchain
- Includes comprehensive evolution mechanics with on-chain permanence
- Hybrid storage approach using Walrus (decentralized blob storage)
- Full integration with Sui's Kiosk marketplace system
- 1% creator royalty through Sui's transfer policy framework

#### Contract Parameters

| Parameter | Value |
|-----------|-------|
| **Total Supply** | 3333 NFTs |
| **Initial Mint Price** | 15 SUI |
| **Admin Address** | 0xa8125cc1a3c3d425a317d405b4089402cf0a9e20fb8a484a0f98973baec09c0b |
| **Visualization Site** | 0xb747da318c311052b21eddbd46d43a6f04c6689add62f76d58bdd9866a60f3be |

#### Public Entry Points

The contract exposes the following main public functions:
- `public_mint`: For public minting with payment
- `whitelist_mint`: For whitelisted addresses to mint
- `reveal_update_nft`: For evolution implementation
- `reveal_display`: For toggling between GPU and character images

#### Security Notes

- Admin-only functions are protected with address checks
- Supply limits enforced for both public and whitelist minting
- Per-user minting limits implemented (max 10 NFTs per address)
- Royalty enforcement through transfer policy

#### Post-Deployment Verification

- [x] Package published successfully
- [x] All modules deployed (kiosk_lock_rule, royalty_rule, vram)
- [x] Contract parameters set correctly
- [ ] Test minting operation
- [ ] Test evolution mechanics
- [ ] Test marketplace integration
- [ ] Verify royalty enforcement

#### Explorer Links

- [Package on Sui Explorer](https://suiexplorer.com/object/0xba3ced10c5a171d763186479f75c0dc6879e3813a95f43e096b8929aaee8f734?network=mainnet)
