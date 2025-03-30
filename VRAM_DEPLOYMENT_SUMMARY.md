# VRAM Genesis NFT Collection - Deployment Summary

## Core Contract Information
| Property | Value |
|----------|-------|
| **Package ID** | `0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f` |
| **Admin Address** | `0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363` |
| **Deployment Date** | 2025-03-29 |
| **Explorer Link** | [View on Sui Explorer](https://suiexplorer.com/object/0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f?network=mainnet) |

## Collection Parameters
- **Total Supply**: 3,333 NFTs
- **Mint Price**: 15 SUI
- **Royalty**: 5%
- **Visualization Site**: `0xb747da318c311052b21eddbd46d43a6f04c6689add62f76d58bdd9866a60f3be`

## Key Features
- First implementation of the Axolotl Protocol for NFT evolution
- On-chain permanence with complete evolution history
- Hybrid storage via Walrus (decentralized blob storage)
- Marketplace compatibility with kiosk system integration
- Multiple evolution mechanics (reveal-based, attribute-based)

## Integration Notes
- Use package ID for all contract interactions
- Admin address has exclusive access to administrative functions
- Minting site: vramai.wal.app
- Kiosk system required for marketplace compatibility



habit soul universe clip great cage mushroom appear border visa twist bike

    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:515:5
    │
515 │     image_url : String, 
    │     ^^^^^^^^^ Unused parameter 'image_url'. Consider removing or prefixing with an underscore: '_image_url'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:516:5
    │
516 │     keys: vector<0x1::string::String>, 
    │     ^^^^ Unused parameter 'keys'. Consider removing or prefixing with an underscore: '_keys'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:517:5
    │
517 │     values: vector<0x1::string::String>, 
    │     ^^^^^^ Unused parameter 'values'. Consider removing or prefixing with an underscore: '_values'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:551:5
    │
551 │     image_blob_id : String, 
    │     ^^^^^^^^^^^^^ Unused parameter 'image_blob_id'. Consider removing or prefixing with an underscore: '_image_blob_id'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09012]: unused 'mut' modifiers
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:590:13
    │
590 │     let mut v5 = v4;
    │         --- ^^ The variable 'v5' is never used mutably
    │         │    
    │         Consider removing the 'mut' declaration here
    │
    = This warning can be suppressed with '#[allow(unused_let_mut)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Please report feedback on the linter warnings at https://forums.sui.io

Skipping dependency verification
Transaction Digest: EuDW5S2STdmx9cbZTHarwEfo6DycStRxMDuDFDYrp4q
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Data                                                                                             │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                   │
│ Gas Owner: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                │
│ Gas Budget: 100000000 MIST                                                                                   │
│ Gas Price: 750 MIST                                                                                          │
│ Gas Payment:                                                                                                 │
│  ┌──                                                                                                         │
│  │ ID: 0x36791a3d7d1e3b595c106e2b6d26ff4a7dff9539db7ec8e7f6998faea3d9e7ca                                    │
│  │ Version: 510488298                                                                                        │
│  │ Digest: 9GpGtiYKrfE6tZnq47q8ddXQjGSnGREffC97Ji1Dj9YD                                                      │
│  └──                                                                                                         │
│                                                                                                              │
│ Transaction Kind: Programmable                                                                               │
│ ╭──────────────────────────────────────────────────────────────────────────────────────────────────────────╮ │
│ │ Input Objects                                                                                            │ │
│ ├──────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│ │ 0   Pure Arg: Type: address, Value: "0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363" │ │
│ ╰──────────────────────────────────────────────────────────────────────────────────────────────────────────╯ │
│ ╭─────────────────────────────────────────────────────────────────────────╮                                  │
│ │ Commands                                                                │                                  │
│ ├─────────────────────────────────────────────────────────────────────────┤                                  │
│ │ 0  Publish:                                                             │                                  │
│ │  ┌                                                                      │                                  │
│ │  │ Dependencies:                                                        │                                  │
│ │  │   0x0000000000000000000000000000000000000000000000000000000000000001 │                                  │
│ │  │   0x0000000000000000000000000000000000000000000000000000000000000002 │                                  │
│ │  └                                                                      │                                  │
│ │                                                                         │                                  │
│ │ 1  TransferObjects:                                                     │                                  │
│ │  ┌                                                                      │                                  │
│ │  │ Arguments:                                                           │                                  │
│ │  │   Result 0                                                           │                                  │
│ │  │ Address: Input  0                                                    │                                  │
│ │  └                                                                      │                                  │
│ ╰─────────────────────────────────────────────────────────────────────────╯                                  │
│                                                                                                              │
│ Signatures:                                                                                                  │
│    i02XUmNPduwVS57tH1FGp9fUEDM9YKyLPBG1KCBt5PBbj3Pzh9kcmHO6enAfOOA4PVDGHR0FMC8JRpPaN5j0CQ==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: EuDW5S2STdmx9cbZTHarwEfo6DycStRxMDuDFDYrp4q                                               │
│ Status: Success                                                                                   │
│ Executed Epoch: 716                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x3a093ecddca8f741b30238df3ef516fc4b13e56b8513728c92e39cad6ff3ea69                         │
│  │ Owner: Shared( 510488299 )                                                                     │
│  │ Version: 510488299                                                                             │
│  │ Digest: FsEsuVs9y2ruRJuh2yTtzpGnTbyFEufJqqBKpLDmJ3fy                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x3bd51dd4d9d5e3e91e06094eeee32d0d57926d8f76a6ba12db74115ec0510cd4                         │
│  │ Owner: Object ID: ( 0x3a093ecddca8f741b30238df3ef516fc4b13e56b8513728c92e39cad6ff3ea69 )       │
│  │ Version: 510488299                                                                             │
│  │ Digest: 8JCo7uPxqcr6PzGg7QU3Yhww8G37aW4FAX7dcR9B1aet                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x3ec462d61aeb09aaaded2bbb256f21c288b1ad4f6fda5cd9436209bf88a60410                         │
│  │ Owner: Object ID: ( 0x3a093ecddca8f741b30238df3ef516fc4b13e56b8513728c92e39cad6ff3ea69 )       │
│  │ Version: 510488299                                                                             │
│  │ Digest: 9frvKgnRbNjdSdNm8Y9aghWXEHfxmf9sDLyYH6ncYNwD                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x6a97b88e1c2c3a084cf1d7c49c1cc0c1bb40d16f8d9c66f49a0c8165a6e13e36                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 510488299                                                                             │
│  │ Digest: EUVUeNySrF4eUx1TXAoWcyY4xGUBHZdSTQpGhAVWMQSn                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: 9YEFQ88WEDv4WsE75bLE9eSBaHvwd6eiC3TMAhwWhLuy                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x92b7591644fe957a2287c3a1e0682ea4703e77f3c4976440c1a4809b348d199d                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 510488299                                                                             │
│  │ Digest: 9K4tcFmHpctPYMgqJaBPaCF5aKejErpCET1GnHtX1YHU                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xb57eca38c7a0bf8537e60710aec4f9bf1acbab9eb589e8e8ea67ec5badd940d5                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 510488299                                                                             │
│  │ Digest: Dqd75zGmgUVUnjk5NQYa37rJ761xxSfJNNue9qAZFoQP                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xde421612a88957f7b8d0a943c4a8d50897f47231b5581f6c8c90edf48065bdd2                         │
│  │ Owner: Shared( 510488299 )                                                                     │
│  │ Version: 510488299                                                                             │
│  │ Digest: 93LjBXykdasCdFmDrdyomu3daFM6LQw7jUJVje7y7Cxp                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xeb11bcfd5ff95b5c925424986bc1b1eb6fca9802efc184df07a694a8d3b0f2c7                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 510488299                                                                             │
│  │ Digest: 4Hb5KzXjYV9NjtSbBmD3g7otsKPYw8sP9UAimGv7QenP                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x36791a3d7d1e3b595c106e2b6d26ff4a7dff9539db7ec8e7f6998faea3d9e7ca                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 510488299                                                                             │
│  │ Digest: GKGeGgZgLt7ghQfaMvHznrG7YryMH1bFpKyNMhhEYbkY                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x36791a3d7d1e3b595c106e2b6d26ff4a7dff9539db7ec8e7f6998faea3d9e7ca                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 510488299                                                                             │
│  │ Digest: GKGeGgZgLt7ghQfaMvHznrG7YryMH1bFpKyNMhhEYbkY                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 88152400 MIST                                                                    │
│    Computation Cost: 750000 MIST                                                                  │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    4TNLF65yDaLUBm31XxQgQffJvmzN98aSiMUDjevYcgfU                                                   │
│    7fqHwYiiqQ4ypj5erp5HDJogE1gJQJdTZXmv9q4tTjKh                                                   │
│    AegTokRkvNZCPTH2TqsCjev5n2LjtCWTFX8yfg39UPFn                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Block Events                                                                                                                                                                                     │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                                                                                                                                         │
│  │ EventID: EuDW5S2STdmx9cbZTHarwEfo6DycStRxMDuDFDYrp4q:0                                                                                                                                                    │
│  │ PackageID: 0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                │
│  │ EventType: 0x2::display::DisplayCreated<0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f::vram::VramNFT>                                                                                │
│  │ ParsedJSON:                                                                                                                                                                                               │
│  │   ┌────┬────────────────────────────────────────────────────────────────────┐                                                                                                                             │
│  │   │ id │ 0x6a97b88e1c2c3a084cf1d7c49c1cc0c1bb40d16f8d9c66f49a0c8165a6e13e36 │                                                                                                                             │
│  │   └────┴────────────────────────────────────────────────────────────────────┘                                                                                                                             │
│  └──                                                                                                                                                                                                         │
│  ┌──                                                                                                                                                                                                         │
│  │ EventID: EuDW5S2STdmx9cbZTHarwEfo6DycStRxMDuDFDYrp4q:1                                                                                                                                                    │
│  │ PackageID: 0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                │
│  │ EventType: 0x2::display::VersionUpdated<0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f::vram::VramNFT>                                                                                │
│  │ ParsedJSON:                                                                                                                                                                                               │
│  │   ┌─────────┬──────────┬───────┬────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐ │
│  │   │ fields  │ contents │ key   │ collection_name                                                                                                                                                        │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ VRAM Genesis NFT Collection                                                                                                                                            │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ collection_description                                                                                                                                                 │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ The Genesis VRAM NFT Collection represents the first implementation of the Axolotl Protocol on the Sui blockchain, enabling true on-chain evolution of digital assets. │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ collection_media_url                                                                                                                                                   │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ https://aggregator.walrus-mainnet.walrus.space/v1/blobs/WtgIqQ3NBOixUUedXI-YL1jgMjKxfSrJMGNUyHiuZ1Q                                                                    │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ creator                                                                                                                                                                │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ VRAM.AI                                                                                                                                                                │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ project_url                                                                                                                                                            │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ https://vramai.wal.app                                                                                                                                                 │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ external_url                                                                                                                                                           │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ https://vramai.wal.app/?nft={b36addr}                                                                                                                                  │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ link                                                                                                                                                                   │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ https://vramai.wal.app/?nft={b36addr}                                                                                                                                  │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ name                                                                                                                                                                   │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ VRAM Genesis Fragment #{number_id}                                                                                                                                     │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ description                                                                                                                                                            │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ {description}                                                                                                                                                          │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ image_url                                                                                                                                                              │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ {image_url}                                                                                                                                                            │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ number_id                                                                                                                                                              │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ {number_id}                                                                                                                                                            │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ attributes                                                                                                                                                             │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ {attributes}                                                                                                                                                           │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ key   │ walrus site address                                                                                                                                                    │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ b747da318c311052b21eddbd46d43a6f04c6689add62f76d58bdd9866a60f3be                                                                                                       │ │
│  │   ├─────────┼──────────┴───────┴────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │ id      │ 0x6a97b88e1c2c3a084cf1d7c49c1cc0c1bb40d16f8d9c66f49a0c8165a6e13e36                                                                                                                        │ │
│  │   ├─────────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │ version │ 1                                                                                                                                                                                         │ │
│  │   └─────────┴───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘ │
│  └──                                                                                                                                                                                                         │
│  ┌──                                                                                                                                                                                                         │
│  │ EventID: EuDW5S2STdmx9cbZTHarwEfo6DycStRxMDuDFDYrp4q:2                                                                                                                                                    │
│  │ PackageID: 0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                │
│  │ EventType: 0x2::transfer_policy::TransferPolicyCreated<0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f::vram::VramNFT>                                                                 │
│  │ ParsedJSON:                                                                                                                                                                                               │
│  │   ┌────┬────────────────────────────────────────────────────────────────────┐                                                                                                                             │
│  │   │ id │ 0x3a093ecddca8f741b30238df3ef516fc4b13e56b8513728c92e39cad6ff3ea69 │                                                                                                                             │
│  │   └────┴────────────────────────────────────────────────────────────────────┘                                                                                                                             │
│  └──                                                                                                                                                                                                         │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                                                                                                                                                                                   │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                                                                                                                                                                                 │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x3a093ecddca8f741b30238df3ef516fc4b13e56b8513728c92e39cad6ff3ea69                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Shared( 510488299 )                                                                                                                                                                                                                                    │
│  │ ObjectType: 0x2::transfer_policy::TransferPolicy<0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f::vram::VramNFT>                                                                                                                           │
│  │ Version: 510488299                                                                                                                                                                                                                                            │
│  │ Digest: FsEsuVs9y2ruRJuh2yTtzpGnTbyFEufJqqBKpLDmJ3fy                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x3bd51dd4d9d5e3e91e06094eeee32d0d57926d8f76a6ba12db74115ec0510cd4                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Object ID: ( 0x3a093ecddca8f741b30238df3ef516fc4b13e56b8513728c92e39cad6ff3ea69 )                                                                                                                                                                      │
│  │ ObjectType: 0x2::dynamic_field::Field<0x2::transfer_policy::RuleKey<0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f::kiosk_lock_rule::Rule>, 0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f::kiosk_lock_rule::Config>  │
│  │ Version: 510488299                                                                                                                                                                                                                                            │
│  │ Digest: 8JCo7uPxqcr6PzGg7QU3Yhww8G37aW4FAX7dcR9B1aet                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x3ec462d61aeb09aaaded2bbb256f21c288b1ad4f6fda5cd9436209bf88a60410                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Object ID: ( 0x3a093ecddca8f741b30238df3ef516fc4b13e56b8513728c92e39cad6ff3ea69 )                                                                                                                                                                      │
│  │ ObjectType: 0x2::dynamic_field::Field<0x2::transfer_policy::RuleKey<0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f::royalty_rule::Rule>, 0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f::royalty_rule::Config>        │
│  │ Version: 510488299                                                                                                                                                                                                                                            │
│  │ Digest: 9frvKgnRbNjdSdNm8Y9aghWXEHfxmf9sDLyYH6ncYNwD                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x6a97b88e1c2c3a084cf1d7c49c1cc0c1bb40d16f8d9c66f49a0c8165a6e13e36                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::display::Display<0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f::vram::VramNFT>                                                                                                                                          │
│  │ Version: 510488299                                                                                                                                                                                                                                            │
│  │ Digest: EUVUeNySrF4eUx1TXAoWcyY4xGUBHZdSTQpGhAVWMQSn                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x92b7591644fe957a2287c3a1e0682ea4703e77f3c4976440c1a4809b348d199d                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::package::Publisher                                                                                                                                                                                                                           │
│  │ Version: 510488299                                                                                                                                                                                                                                            │
│  │ Digest: 9K4tcFmHpctPYMgqJaBPaCF5aKejErpCET1GnHtX1YHU                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0xb57eca38c7a0bf8537e60710aec4f9bf1acbab9eb589e8e8ea67ec5badd940d5                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::transfer_policy::TransferPolicyCap<0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f::vram::VramNFT>                                                                                                                        │
│  │ Version: 510488299                                                                                                                                                                                                                                            │
│  │ Digest: Dqd75zGmgUVUnjk5NQYa37rJ761xxSfJNNue9qAZFoQP                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0xde421612a88957f7b8d0a943c4a8d50897f47231b5581f6c8c90edf48065bdd2                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Shared( 510488299 )                                                                                                                                                                                                                                    │
│  │ ObjectType: 0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f::vram::Treasury                                                                                                                                                                │
│  │ Version: 510488299                                                                                                                                                                                                                                            │
│  │ Digest: 93LjBXykdasCdFmDrdyomu3daFM6LQw7jUJVje7y7Cxp                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0xeb11bcfd5ff95b5c925424986bc1b1eb6fca9802efc184df07a694a8d3b0f2c7                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::package::UpgradeCap                                                                                                                                                                                                                          │
│  │ Version: 510488299                                                                                                                                                                                                                                            │
│  │ Digest: 4Hb5KzXjYV9NjtSbBmD3g7otsKPYw8sP9UAimGv7QenP                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│ Mutated Objects:                                                                                                                                                                                                                                                 │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x36791a3d7d1e3b595c106e2b6d26ff4a7dff9539db7ec8e7f6998faea3d9e7ca                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                                                                                                                                                                                    │
│  │ Version: 510488299                                                                                                                                                                                                                                            │
│  │ Digest: GKGeGgZgLt7ghQfaMvHznrG7YryMH1bFpKyNMhhEYbkY                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│ Published Objects:                                                                                                                                                                                                                                               │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ PackageID: 0x831d5788845b393177eb31b1cfe66b94c3014723d3551fcacab5c04c7a0d1f4f                                                                                                                                                                                 │
│  │ Version: 1                                                                                                                                                                                                                                                    │
│  │ Digest: 9YEFQ88WEDv4WsE75bLE9eSBaHvwd6eiC3TMAhwWhLuy                                                                                                                                                                                                          │
│  │ Modules: kiosk_lock_rule, royalty_rule, vram                                                                                                                                                                                                                  │
│  └──                                                                                                                                                                                                                                                             │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -87924280                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
(base) sid@pop-os:~/vram-nft-contract$ git pull