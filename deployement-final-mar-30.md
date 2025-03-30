ithub.com/MystenLabs/sui.git
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
Transaction Digest: 47bS8ctfJqApWb5GTTbmrHinLyRqy2hxYbxiXDwidpYw
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
│  │ Version: 512614655                                                                                        │
│  │ Digest: EJeqRkYc7Qv2AKMMzEHDsVJST5Vvik23vdyRsu3P4kGM                                                      │
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
│    Ie2YGVybi1vMvf61IrMkRZluHcSVQJI7drf9baNPbKOcU7hnsOGhZlPG+VhSt2ZwOjNjdtC+LNON8Lv5crLFCQ==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: 47bS8ctfJqApWb5GTTbmrHinLyRqy2hxYbxiXDwidpYw                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 717                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x14e78695a3f1c6b720f866ebd42c1012b8808476a000d1b72d34bd4b6975d0bc                         │
│  │ Owner: Object ID: ( 0x1fff33911ac71f18b6de0a17ee3857bbbee9ec5b05cf9c778e592c8602071be9 )       │
│  │ Version: 512614656                                                                             │
│  │ Digest: 21vmVPT84pz2AwiXdU5QUN4rtvcsZjXydUKEMy1AhZAp                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x1fff33911ac71f18b6de0a17ee3857bbbee9ec5b05cf9c778e592c8602071be9                         │
│  │ Owner: Shared( 512614656 )                                                                     │
│  │ Version: 512614656                                                                             │
│  │ Digest: CPiuEmtfBkSw2K3SJSeo6YxpNTnWUqhZQBX9WYNQqobV                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x51e7ec4e9d7408659931cb2173d9ae808f61c2e49ebe7ba83262035b551795d5                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: 6HqwfqpvKXv6yp9wG17L91LkFNoGSaXddNifjKNjKQ3E                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x8574e3814421f0cf10fa233962bbda7297be1c690ad3dfc27a608dd145712eb1                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: 61h63quLJkTPY51bgVG4P1tDADXw42iYbcPNrvVN587v                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x911bfb1df4b1a0751fa6e806ced31738143e80714ba147ce473f631090279003                         │
│  │ Owner: Object ID: ( 0x1fff33911ac71f18b6de0a17ee3857bbbee9ec5b05cf9c778e592c8602071be9 )       │
│  │ Version: 512614656                                                                             │
│  │ Digest: 8QGp9rLgM2yWf72rrPKoAuFKnnqvC276cQ5znQKLhSws                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x9b2c4f4396c410e95b536b33ae92bab4a1a0248f2cc0e996d74f5f0b941c99f4                         │
│  │ Owner: Shared( 512614656 )                                                                     │
│  │ Version: 512614656                                                                             │
│  │ Digest: 6nYv52jXsL3CjbUyxf3Zn1qdSDf7LjkgRfNR2pctDqPa                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xb627df5d2e304b0decaed274bb59da27c53e88937b43e1a956700ba4403d5363                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: HecjGZZd7Fi88DZbeJKdktU22yJz1jQToQQFNUxLZDpL                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: CFeBvyExw9y6R2pqsLVv3rLjvR1PQ3ojDtKFzModob8f                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xf3b37977aa9fe1576e0bcc8fc3d794c5824dde7bf493e8b57f0a4356c888a7b1                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: 7a5PBzZpqEc3h15nJbPhMaemydQNmeS6wxYosvTwruNF                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x9f282af6f42295b2f6af72b815a3e5ec723e489a5731904e7ba2afe5b687a39c                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: 5armsdUehx51feqxqLLkma5kxS8oGdGDLqBcnJSEEzgR                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x9f282af6f42295b2f6af72b815a3e5ec723e489a5731904e7ba2afe5b687a39c                         │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: 5armsdUehx51feqxqLLkma5kxS8oGdGDLqBcnJSEEzgR                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 87909200 MIST                                                                    │
│    Computation Cost: 750000 MIST                                                                  │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    4AXwRLyEp5VbkborFWbwvuR29DpXRLH5SLUxMNgLSg68                                                   │
│    4TNLF65yDaLUBm31XxQgQffJvmzN98aSiMUDjevYcgfU                                                   │
│    7fqHwYiiqQ4ypj5erp5HDJogE1gJQJdTZXmv9q4tTjKh                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Block Events                                                                                                                                                                                     │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                                                                                                                                         │
│  │ EventID: 47bS8ctfJqApWb5GTTbmrHinLyRqy2hxYbxiXDwidpYw:0                                                                                                                                                   │
│  │ PackageID: 0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                │
│  │ EventType: 0x2::display::DisplayCreated<0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d::vram::VramNFT>                                                                                │
│  │ ParsedJSON:                                                                                                                                                                                               │
│  │   ┌────┬────────────────────────────────────────────────────────────────────┐                                                                                                                             │
│  │   │ id │ 0x8574e3814421f0cf10fa233962bbda7297be1c690ad3dfc27a608dd145712eb1 │                                                                                                                             │
│  │   └────┴────────────────────────────────────────────────────────────────────┘                                                                                                                             │
│  └──                                                                                                                                                                                                         │
│  ┌──                                                                                                                                                                                                         │
│  │ EventID: 47bS8ctfJqApWb5GTTbmrHinLyRqy2hxYbxiXDwidpYw:1                                                                                                                                                   │
│  │ PackageID: 0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                │
│  │ EventType: 0x2::display::VersionUpdated<0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d::vram::VramNFT>                                                                                │
│  │ ParsedJSON:                                                                                                                                                                                               │
│  │   ┌─────────┬──────────┬───────┬────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐ │
│  │   │ fields  │ contents │ key   │ collection_name                                                                                                                                                        │ │
│  │   │         │          ├───────┼────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │         │          │ value │ VRAM GENESIS CORE                                                                                                                                                      │ │
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
│  │   │         │          │ value │ VRAM Genesis Core #{number_id}                                                                                                                                         │ │
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
│  │   │ id      │ 0x8574e3814421f0cf10fa233962bbda7297be1c690ad3dfc27a608dd145712eb1                                                                                                                        │ │
│  │   ├─────────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │ version │ 1                                                                                                                                                                                         │ │
│  │   └─────────┴───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘ │
│  └──                                                                                                                                                                                                         │
│  ┌──                                                                                                                                                                                                         │
│  │ EventID: 47bS8ctfJqApWb5GTTbmrHinLyRqy2hxYbxiXDwidpYw:2                                                                                                                                                   │
│  │ PackageID: 0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                │
│  │ EventType: 0x2::transfer_policy::TransferPolicyCreated<0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d::vram::VramNFT>                                                                 │
│  │ ParsedJSON:                                                                                                                                                                                               │
│  │   ┌────┬────────────────────────────────────────────────────────────────────┐                                                                                                                             │
│  │   │ id │ 0x1fff33911ac71f18b6de0a17ee3857bbbee9ec5b05cf9c778e592c8602071be9 │                                                                                                                             │
│  │   └────┴────────────────────────────────────────────────────────────────────┘                                                                                                                             │
│  └──                                                                                                                                                                                                         │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                                                                                                                                                                                   │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                                                                                                                                                                                 │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x14e78695a3f1c6b720f866ebd42c1012b8808476a000d1b72d34bd4b6975d0bc                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Object ID: ( 0x1fff33911ac71f18b6de0a17ee3857bbbee9ec5b05cf9c778e592c8602071be9 )                                                                                                                                                                      │
│  │ ObjectType: 0x2::dynamic_field::Field<0x2::transfer_policy::RuleKey<0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d::kiosk_lock_rule::Rule>, 0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d::kiosk_lock_rule::Config>  │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: 21vmVPT84pz2AwiXdU5QUN4rtvcsZjXydUKEMy1AhZAp                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x1fff33911ac71f18b6de0a17ee3857bbbee9ec5b05cf9c778e592c8602071be9                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Shared( 512614656 )                                                                                                                                                                                                                                    │
│  │ ObjectType: 0x2::transfer_policy::TransferPolicy<0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d::vram::VramNFT>                                                                                                                           │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: CPiuEmtfBkSw2K3SJSeo6YxpNTnWUqhZQBX9WYNQqobV                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x51e7ec4e9d7408659931cb2173d9ae808f61c2e49ebe7ba83262035b551795d5                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::package::Publisher                                                                                                                                                                                                                           │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: 6HqwfqpvKXv6yp9wG17L91LkFNoGSaXddNifjKNjKQ3E                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x8574e3814421f0cf10fa233962bbda7297be1c690ad3dfc27a608dd145712eb1                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::display::Display<0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d::vram::VramNFT>                                                                                                                                          │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: 61h63quLJkTPY51bgVG4P1tDADXw42iYbcPNrvVN587v                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x911bfb1df4b1a0751fa6e806ced31738143e80714ba147ce473f631090279003                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Object ID: ( 0x1fff33911ac71f18b6de0a17ee3857bbbee9ec5b05cf9c778e592c8602071be9 )                                                                                                                                                                      │
│  │ ObjectType: 0x2::dynamic_field::Field<0x2::transfer_policy::RuleKey<0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d::royalty_rule::Rule>, 0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d::royalty_rule::Config>        │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: 8QGp9rLgM2yWf72rrPKoAuFKnnqvC276cQ5znQKLhSws                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x9b2c4f4396c410e95b536b33ae92bab4a1a0248f2cc0e996d74f5f0b941c99f4                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Shared( 512614656 )                                                                                                                                                                                                                                    │
│  │ ObjectType: 0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d::vram::Treasury                                                                                                                                                                │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: 6nYv52jXsL3CjbUyxf3Zn1qdSDf7LjkgRfNR2pctDqPa                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0xb627df5d2e304b0decaed274bb59da27c53e88937b43e1a956700ba4403d5363                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::package::UpgradeCap                                                                                                                                                                                                                          │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: HecjGZZd7Fi88DZbeJKdktU22yJz1jQToQQFNUxLZDpL                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0xf3b37977aa9fe1576e0bcc8fc3d794c5824dde7bf493e8b57f0a4356c888a7b1                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::transfer_policy::TransferPolicyCap<0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d::vram::VramNFT>                                                                                                                        │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: 7a5PBzZpqEc3h15nJbPhMaemydQNmeS6wxYosvTwruNF                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│ Mutated Objects:                                                                                                                                                                                                                                                 │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x9f282af6f42295b2f6af72b815a3e5ec723e489a5731904e7ba2afe5b687a39c                                                                                                                                                                                  │
│  │ Sender: 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                                                                                                                                                                                    │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: 5armsdUehx51feqxqLLkma5kxS8oGdGDLqBcnJSEEzgR                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│ Published Objects:                                                                                                                                                                                                                                               │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ PackageID: 0xbdd3e803199e9d599be97b55334f34dd25d8330a13e288ea7b332ba5dac9f89d                                                                                                                                                                                 │
│  │ Version: 1                                                                                                                                                                                                                                                    │
│  │ Digest: CFeBvyExw9y6R2pqsLVv3rLjvR1PQ3ojDtKFzModob8f                                                                                                                                                                                                          │
│  │ Modules: kiosk_lock_rule, royalty_rule, vram                                                                                                                                                                                                                  │
│  └──                                                                                                                                                                                                                                                             │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0x07fde570941e6e1205c846af5eb1c000cd0dce4debf2671904671ccd91755363 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -87681080                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
(base) sid@pop-os:~/vram-nft-contract$ 