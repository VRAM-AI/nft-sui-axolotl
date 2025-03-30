
(base) sid@pop-os:~/vram-nft-contract$ cd /home/sid/vram-nft-contract && sui client publish --gas-budget 200000000
[Note]: Dependency sources are no longer verified automatically during publication and upgrade. You can pass the `--verify-deps` option if you would like to verify them as part of publication or upgrade.
[note] Dependencies on Bridge, DeepBook, MoveStdlib, Sui, and SuiSystem are automatically added, but this feature is disabled for your package because you have explicitly included dependencies on Sui. Consider removing these dependencies from Move.toml.
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING vram
warning[W09001]: unused alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:57:16
   │
57 │ use sui::url::{Self, Url};
   │                ^^^^ Unused 'use' of alias 'url'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:57:22
   │
57 │ use sui::url::{Self, Url};
   │                      ^^^ Unused 'use' of alias 'Url'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:58:19
   │
58 │ use std::string::{utf8, String};
   │                   ^^^^ Unused 'use' of alias 'utf8'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:59:19
   │
59 │ use sui::object::{Self, ID, UID};
   │                   ^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:59:25
   │
59 │ use sui::object::{Self, ID, UID};
   │                         ^^ Unnecessary alias 'ID' for module member 'sui::object::ID'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:59:25
   │
59 │ use sui::object::{Self, ID, UID};
   │                         ^^ Unused 'use' of alias 'ID'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:59:29
   │
59 │ use sui::object::{Self, ID, UID};
   │                             ^^^ Unnecessary alias 'UID' for module member 'sui::object::UID'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:61:10
   │
61 │ use sui::transfer;
   │          ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:62:21
   │
62 │ use sui::transfer::{public_transfer};
   │                     ^^^^^^^^^^^^^^^ Unused 'use' of alias 'public_transfer'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:63:31
   │
63 │ use sui::tx_context::{sender, Self, TxContext};
   │                               ^^^^ Unnecessary alias 'tx_context' for module 'sui::tx_context'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:63:37
   │
63 │ use sui::tx_context::{sender, Self, TxContext};
   │                                     ^^^^^^^^^ Unnecessary alias 'TxContext' for module member 'sui::tx_context::TxContext'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09012]: unused 'mut' modifiers
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:222:13
    │
222 │     let mut v4 = v3;
    │         --- ^^ The variable 'v4' is never used mutably
    │         │    
    │         Consider removing the 'mut' declaration here
    │
    = This warning can be suppressed with '#[allow(unused_let_mut)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[Lint W99000]: possible owned object share
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:233:5
    │
233 │     0x2::transfer::public_share_object<0x2::transfer_policy::TransferPolicy<VramNFT>>(v5);
    │     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    │     │                                                                                 │
    │     │                                                                                 Creating a fresh object and sharing it within the same function will ensure this does not abort.
    │     Potential abort from a (potentially) owned object created by a different transaction.
    │
    ┌─ /home/sid/.move/https___github_com_MystenLabs_sui_git_framework__mainnet/crates/sui-framework/packages/sui-framework/sources/kiosk/transfer_policy.move:71:50
    │
 71 │ public struct TransferPolicy<phantom T> has key, store {
    │                                                  ----- Potentially an owned object because 'store' grants access to public transfers
    ·
115 │ public fun new<T>(pub: &Publisher, ctx: &mut TxContext): (TransferPolicy<T>, TransferPolicyCap<T>) {
    │                                                           ----------------- A potentially owned object coming from here
    │
    = This warning can be suppressed with '#[allow(lint(share_owned))]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:440:5
    │
440 │     image_blob_id : String, 
    │     ^^^^^^^^^^^^^ Unused parameter 'image_blob_id'. Consider removing or prefixing with an underscore: '_image_blob_id'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09012]: unused 'mut' modifiers
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:466:21
    │
466 │             let mut v5 = v4;
    │                 --- ^^ The variable 'v5' is never used mutably
    │                 │    
    │                 Consider removing the 'mut' declaration here
    │
    = This warning can be suppressed with '#[allow(unused_let_mut)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:499:5
    │
499 │     treasury: &mut Treasury, 
    │     ^^^^^^^^ Unused parameter 'treasury'. Consider removing or prefixing with an underscore: '_treasury'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:500:5
    │
500 │     ctx: &mut TxContext
    │     ^^^ Unused parameter 'ctx'. Consider removing or prefixing with an underscore: '_ctx'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:513:5
    │
513 │     name : String, 
    │     ^^^^ Unused parameter 'name'. Consider removing or prefixing with an underscore: '_name'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:514:5
    │
514 │     description : String, 
    │     ^^^^^^^^^^^ Unused parameter 'description'. Consider removing or prefixing with an underscore: '_description'
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
Transaction Digest: 5J39SmGqkLTmU4qTmFvRmDpxg6rUMd8wWFd8CUHCJudz
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Data                                                                                             │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                   │
│ Gas Owner: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                │
│ Gas Budget: 200000000 MIST                                                                                   │
│ Gas Price: 750 MIST                                                                                          │
│ Gas Payment:                                                                                                 │
│  ┌──                                                                                                         │
│  │ ID: 0x9f282af6f42295b2f6af72b815a3e5ec723e489a5731904e7ba2afe5b687a39c                                    │
│  │ Version: 512614651                                                                                        │
│  │ Digest: 8zu8fX9aTE5MiKA98opWWBkv1snmbuwZ5V74fW7TiPa3                                                      │
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
│    lm+kRSTA40RLOkOGCXpK0AYwMZ4zmPxBqd+efwYpiwLSm4sniLEaf0KaOHCaCGA5Kh39Rj5MzpOUvlyEhfrcBw==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: 5J39SmGqkLTmU4qTmFvRmDpxg6rUMd8wWFd8CUHCJudz                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 717                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x149130bba4c90e3423649808eabbcf1ab77fae9daef21d1e4a359ccddf6b5091                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614652                                                                             │
│  │ Digest: F6C2TmmXS41shucxyrmTT6bK9iacUU6g8ZtjGQKWXQNC                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x21e56663805d3ffddfcc11f58691058555a8667d2ebbb34f28f3faf64f9294f3                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614652                                                                             │
│  │ Digest: 8RaSgC4dyt7b65su2V9oYPnQzu4Ngo2HkS74BY7VWWsm                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x3cd32d09660df9dc37f680fd99c49bf39a6f392e7bd5795e2bea8dc9db82ff6d                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614652                                                                             │
│  │ Digest: 9HRkDza1JfLSqAyro3B7wHxvQSrgeiWjvLb6aUFtzMW6                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x586f37e75d717324efd458c85547a56436780a5e63eca54284ead66e0d5325c5                         │
│  │ Owner: Shared( 512614652 )                                                                     │
│  │ Version: 512614652                                                                             │
│  │ Digest: F11LMxMcwGijMi6D5K8ZFL3HJsFsoaihZzD5KyqNx6fj                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x6293d29f6e0a4716fe881d8083b4643421904d94e3eec802114d12e72295edf8                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614652                                                                             │
│  │ Digest: 7SSC7NqWuNykt4tLAbBDPbnMxCybQiUL7uh9FQUK1V8A                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x81c1a75fad3a2bbcee5f55c1d0183344120a18b16d991e8c02e4b413b2d6e870                         │
│  │ Owner: Shared( 512614652 )                                                                     │
│  │ Version: 512614652                                                                             │
│  │ Digest: 2HEdkVFbGKRetrkVuYGd5FM9QA7wB1YGzRLzmKFboJPa                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xa26e3f4e1d7548865c5a8baf1934b9e127e9f407b51a47b34d34da8179a5262c                         │
│  │ Owner: Object ID: ( 0x586f37e75d717324efd458c85547a56436780a5e63eca54284ead66e0d5325c5 )       │
│  │ Version: 512614652                                                                             │
│  │ Digest: 6UskVCVju67aPjSD2nM17nsbgrxm5A8APQ4iBqZ6wNJg                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xe272cf67d1016345d96ccc2f3be09f247ce45451ed99195301dc5890ec2edc34                         │
│  │ Owner: Object ID: ( 0x586f37e75d717324efd458c85547a56436780a5e63eca54284ead66e0d5325c5 )       │
│  │ Version: 512614652                                                                             │
│  │ Digest: CE9WnUfvBs8syqErwZcHwmSQmJHvWcfhe6wYVGCmBaD9                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: 5Jr4uXdpHpHg6CARvHkAFD276C26H5eBiwo5fpwjQVry                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x9f282af6f42295b2f6af72b815a3e5ec723e489a5731904e7ba2afe5b687a39c                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614652                                                                             │
│  │ Digest: 7jfb8riGqwEbnQ7SvCw1fbVXuqcfJpPRvF7C1AEenmQz                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x9f282af6f42295b2f6af72b815a3e5ec723e489a5731904e7ba2afe5b687a39c                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614652                                                                             │
│  │ Digest: 7jfb8riGqwEbnQ7SvCw1fbVXuqcfJpPRvF7C1AEenmQz                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 88152400 MIST                                                                    │
│    Computation Cost: 750000 MIST                                                                  │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    KViG4jumabB9zWPdcSdMVPBBr6jkyL81K6W2Mejdz1x                                                    │
│    4TNLF65yDaLUBm31XxQgQffJvmzN98aSiMUDjevYcgfU                                                   │
│    7fqHwYiiqQ4ypj5erp5HDJogE1gJQJdTZXmv9q4tTjKh                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Block Events                                                                                                                                                                                     │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                                                                                                                                         │
│  │ EventID: 5J39SmGqkLTmU4qTmFvRmDpxg6rUMd8wWFd8CUHCJudz:0                                                                                                                                                   │
│  │ PackageID: 0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                │
│  │ EventType: 0x2::display::DisplayCreated<0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d::vram::VramNFT>                                                                                │
│  │ ParsedJSON:                                                                                                                                                                                               │
│  │   ┌────┬────────────────────────────────────────────────────────────────────┐                                                                                                                             │
│  │   │ id │ 0x21e56663805d3ffddfcc11f58691058555a8667d2ebbb34f28f3faf64f9294f3 │                                                                                                                             │
│  │   └────┴────────────────────────────────────────────────────────────────────┘                                                                                                                             │
│  └──                                                                                                                                                                                                         │
│  ┌──                                                                                                                                                                                                         │
│  │ EventID: 5J39SmGqkLTmU4qTmFvRmDpxg6rUMd8wWFd8CUHCJudz:1                                                                                                                                                   │
│  │ PackageID: 0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                │
│  │ EventType: 0x2::display::VersionUpdated<0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d::vram::VramNFT>                                                                                │
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
│  │   │ id      │ 0x21e56663805d3ffddfcc11f58691058555a8667d2ebbb34f28f3faf64f9294f3                                                                                                                        │ │
│  │   ├─────────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │ version │ 1                                                                                                                                                                                         │ │
│  │   └─────────┴───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘ │
│  └──                                                                                                                                                                                                         │
│  ┌──                                                                                                                                                                                                         │
│  │ EventID: 5J39SmGqkLTmU4qTmFvRmDpxg6rUMd8wWFd8CUHCJudz:2                                                                                                                                                   │
│  │ PackageID: 0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                │
│  │ EventType: 0x2::transfer_policy::TransferPolicyCreated<0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d::vram::VramNFT>                                                                 │
│  │ ParsedJSON:                                                                                                                                                                                               │
│  │   ┌────┬────────────────────────────────────────────────────────────────────┐                                                                                                                             │
│  │   │ id │ 0x586f37e75d717324efd458c85547a56436780a5e63eca54284ead66e0d5325c5 │                                                                                                                             │
│  │   └────┴────────────────────────────────────────────────────────────────────┘                                                                                                                             │
│  └──                                                                                                                                                                                                         │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                                                                                                                                                                                   │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                                                                                                                                                                                 │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x149130bba4c90e3423649808eabbcf1ab77fae9daef21d1e4a359ccddf6b5091                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::transfer_policy::TransferPolicyCap<0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d::vram::VramNFT>                                                                                                                        │
│  │ Version: 512614652                                                                                                                                                                                                                                            │
│  │ Digest: F6C2TmmXS41shucxyrmTT6bK9iacUU6g8ZtjGQKWXQNC                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x21e56663805d3ffddfcc11f58691058555a8667d2ebbb34f28f3faf64f9294f3                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::display::Display<0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d::vram::VramNFT>                                                                                                                                          │
│  │ Version: 512614652                                                                                                                                                                                                                                            │
│  │ Digest: 8RaSgC4dyt7b65su2V9oYPnQzu4Ngo2HkS74BY7VWWsm                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x3cd32d09660df9dc37f680fd99c49bf39a6f392e7bd5795e2bea8dc9db82ff6d                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::package::Publisher                                                                                                                                                                                                                           │
│  │ Version: 512614652                                                                                                                                                                                                                                            │
│  │ Digest: 9HRkDza1JfLSqAyro3B7wHxvQSrgeiWjvLb6aUFtzMW6                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x586f37e75d717324efd458c85547a56436780a5e63eca54284ead66e0d5325c5                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Shared( 512614652 )                                                                                                                                                                                                                                    │
│  │ ObjectType: 0x2::transfer_policy::TransferPolicy<0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d::vram::VramNFT>                                                                                                                           │
│  │ Version: 512614652                                                                                                                                                                                                                                            │
│  │ Digest: F11LMxMcwGijMi6D5K8ZFL3HJsFsoaihZzD5KyqNx6fj                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x6293d29f6e0a4716fe881d8083b4643421904d94e3eec802114d12e72295edf8                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::package::UpgradeCap                                                                                                                                                                                                                          │
│  │ Version: 512614652                                                                                                                                                                                                                                            │
│  │ Digest: 7SSC7NqWuNykt4tLAbBDPbnMxCybQiUL7uh9FQUK1V8A                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x81c1a75fad3a2bbcee5f55c1d0183344120a18b16d991e8c02e4b413b2d6e870                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Shared( 512614652 )                                                                                                                                                                                                                                    │
│  │ ObjectType: 0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d::vram::Treasury                                                                                                                                                                │
│  │ Version: 512614652                                                                                                                                                                                                                                            │
│  │ Digest: 2HEdkVFbGKRetrkVuYGd5FM9QA7wB1YGzRLzmKFboJPa                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0xa26e3f4e1d7548865c5a8baf1934b9e127e9f407b51a47b34d34da8179a5262c                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Object ID: ( 0x586f37e75d717324efd458c85547a56436780a5e63eca54284ead66e0d5325c5 )                                                                                                                                                                      │
│  │ ObjectType: 0x2::dynamic_field::Field<0x2::transfer_policy::RuleKey<0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d::kiosk_lock_rule::Rule>, 0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d::kiosk_lock_rule::Config>  │
│  │ Version: 512614652                                                                                                                                                                                                                                            │
│  │ Digest: 6UskVCVju67aPjSD2nM17nsbgrxm5A8APQ4iBqZ6wNJg                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0xe272cf67d1016345d96ccc2f3be09f247ce45451ed99195301dc5890ec2edc34                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Object ID: ( 0x586f37e75d717324efd458c85547a56436780a5e63eca54284ead66e0d5325c5 )                                                                                                                                                                      │
│  │ ObjectType: 0x2::dynamic_field::Field<0x2::transfer_policy::RuleKey<0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d::royalty_rule::Rule>, 0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d::royalty_rule::Config>        │
│  │ Version: 512614652                                                                                                                                                                                                                                            │
│  │ Digest: CE9WnUfvBs8syqErwZcHwmSQmJHvWcfhe6wYVGCmBaD9                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│ Mutated Objects:                                                                                                                                                                                                                                                 │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x9f282af6f42295b2f6af72b815a3e5ec723e489a5731904e7ba2afe5b687a39c                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                                                                                                                                                                                    │
│  │ Version: 512614652                                                                                                                                                                                                                                            │
│  │ Digest: 7jfb8riGqwEbnQ7SvCw1fbVXuqcfJpPRvF7C1AEenmQz                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│ Published Objects:                                                                                                                                                                                                                                               │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ PackageID: 0xfe927d5ae27baa747a841293602351778968649b0fa389c4fea4170dc48b907d                                                                                                                                                                                 │
│  │ Version: 1                                                                                                                                                                                                                                                    │
│  │ Digest: 5Jr4uXdpHpHg6CARvHkAFD276C26H5eBiwo5fpwjQVry                                                                                                                                                                                                          │
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
(base) sid@pop-os:~/vram-nft-contract$ 