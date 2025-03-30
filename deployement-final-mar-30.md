(base) sid@pop-os:~/vram-nft-contract$ cd /home/sid/vram-nft-contract && sui client publish --gas-budget 100000000
[Note]: Dependency sources are no longer verified automatically during publication and upgrade. You can pass the `--verify-deps` option if you would like to verify them as part of publication or upgrade.
[note] Dependencies on Bridge, DeepBook, MoveStdlib, Sui, and SuiSystem are automatically added, but this feature is disabled for your package because you have explicitly included dependencies on Sui. Consider removing these dependencies from Move.toml.
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING vram
warning[W09001]: unused alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:76:16
   │
76 │ use sui::url::{Self, Url};
   │                ^^^^ Unused 'use' of alias 'url'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:76:22
   │
76 │ use sui::url::{Self, Url};
   │                      ^^^ Unused 'use' of alias 'Url'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:77:19
   │
77 │ use std::string::{utf8, String};
   │                   ^^^^ Unused 'use' of alias 'utf8'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:78:19
   │
78 │ use sui::object::{Self, ID, UID};
   │                   ^^^^ Unnecessary alias 'object' for module 'sui::object'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:78:25
   │
78 │ use sui::object::{Self, ID, UID};
   │                         ^^ Unnecessary alias 'ID' for module member 'sui::object::ID'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:78:25
   │
78 │ use sui::object::{Self, ID, UID};
   │                         ^^ Unused 'use' of alias 'ID'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:78:29
   │
78 │ use sui::object::{Self, ID, UID};
   │                             ^^^ Unnecessary alias 'UID' for module member 'sui::object::UID'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:80:10
   │
80 │ use sui::transfer;
   │          ^^^^^^^^ Unnecessary alias 'transfer' for module 'sui::transfer'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09001]: unused alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:81:21
   │
81 │ use sui::transfer::{public_transfer};
   │                     ^^^^^^^^^^^^^^^ Unused 'use' of alias 'public_transfer'. Consider removing it
   │
   = This warning can be suppressed with '#[allow(unused_use)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:82:31
   │
82 │ use sui::tx_context::{sender, Self, TxContext};
   │                               ^^^^ Unnecessary alias 'tx_context' for module 'sui::tx_context'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W02021]: duplicate alias
   ┌─ /home/sid/vram-nft-contract/sources/vram.move:82:37
   │
82 │ use sui::tx_context::{sender, Self, TxContext};
   │                                     ^^^^^^^^^ Unnecessary alias 'TxContext' for module member 'sui::tx_context::TxContext'. This alias is provided by default
   │
   = This warning can be suppressed with '#[allow(duplicate_alias)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09012]: unused 'mut' modifiers
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:244:13
    │
244 │     let mut v4 = v3;
    │         --- ^^ The variable 'v4' is never used mutably
    │         │    
    │         Consider removing the 'mut' declaration here
    │
    = This warning can be suppressed with '#[allow(unused_let_mut)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[Lint W99000]: possible owned object share
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:255:5
    │
255 │     0x2::transfer::public_share_object<0x2::transfer_policy::TransferPolicy<VramNFT>>(v5);
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
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:462:5
    │
462 │     image_blob_id : String, 
    │     ^^^^^^^^^^^^^ Unused parameter 'image_blob_id'. Consider removing or prefixing with an underscore: '_image_blob_id'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09012]: unused 'mut' modifiers
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:488:21
    │
488 │             let mut v5 = v4;
    │                 --- ^^ The variable 'v5' is never used mutably
    │                 │    
    │                 Consider removing the 'mut' declaration here
    │
    = This warning can be suppressed with '#[allow(unused_let_mut)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:521:5
    │
521 │     treasury: &mut Treasury, 
    │     ^^^^^^^^ Unused parameter 'treasury'. Consider removing or prefixing with an underscore: '_treasury'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:522:5
    │
522 │     ctx: &mut TxContext
    │     ^^^ Unused parameter 'ctx'. Consider removing or prefixing with an underscore: '_ctx'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:535:5
    │
535 │     name : String, 
    │     ^^^^ Unused parameter 'name'. Consider removing or prefixing with an underscore: '_name'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:536:5
    │
536 │     description : String, 
    │     ^^^^^^^^^^^ Unused parameter 'description'. Consider removing or prefixing with an underscore: '_description'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:537:5
    │
537 │     image_url : String, 
    │     ^^^^^^^^^ Unused parameter 'image_url'. Consider removing or prefixing with an underscore: '_image_url'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:538:5
    │
538 │     keys: vector<0x1::string::String>, 
    │     ^^^^ Unused parameter 'keys'. Consider removing or prefixing with an underscore: '_keys'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:539:5
    │
539 │     values: vector<0x1::string::String>, 
    │     ^^^^^^ Unused parameter 'values'. Consider removing or prefixing with an underscore: '_values'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09002]: unused variable
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:573:5
    │
573 │     image_blob_id : String, 
    │     ^^^^^^^^^^^^^ Unused parameter 'image_blob_id'. Consider removing or prefixing with an underscore: '_image_blob_id'
    │
    = This warning can be suppressed with '#[allow(unused_variable)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

warning[W09012]: unused 'mut' modifiers
    ┌─ /home/sid/vram-nft-contract/sources/vram.move:612:13
    │
612 │     let mut v5 = v4;
    │         --- ^^ The variable 'v5' is never used mutably
    │         │    
    │         Consider removing the 'mut' declaration here
    │
    = This warning can be suppressed with '#[allow(unused_let_mut)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Please report feedback on the linter warnings at https://forums.sui.io

Skipping dependency verification
Transaction Digest: 2naMEnB4M1xJH86R4nUkZtJiivSbfopfYi7iSTP3PJue
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Data                                                                                             │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                   │
│ Gas Owner: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                │
│ Gas Budget: 100000000 MIST                                                                                   │
│ Gas Price: 750 MIST                                                                                          │
│ Gas Payment:                                                                                                 │
│  ┌──                                                                                                         │
│  │ ID: 0x8390ea75bcfa7a57f0820a17223ea475c7c1cab99517a64964ae2fec7dce28f5                                    │
│  │ Version: 512614655                                                                                        │
│  │ Digest: AnyK4F7KcKWqzWFi1MRE1uNHcAhXq1H1uvW8RwFL4SMP                                                      │
│  └──                                                                                                         │
│                                                                                                              │
│ Transaction Kind: Programmable                                                                               │
│ ╭──────────────────────────────────────────────────────────────────────────────────────────────────────────╮ │
│ │ Input Objects                                                                                            │ │
│ ├──────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│ │ 0   Pure Arg: Type: address, Value: "0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427" │ │
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
│    35auTJFSuz1Z6dtUXdHPdS5JdPADye15gEiRioBeNokBx9tjymMj7zWNtEyuNdfJX9zPLEk2F83mgBI+vj5QCQ==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: 2naMEnB4M1xJH86R4nUkZtJiivSbfopfYi7iSTP3PJue                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 717                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x29cc7f82b383623c3f3c17d857330fc7012f60d152a8f29c00253e6e30016986                         │
│  │ Owner: Object ID: ( 0x6ef680c9f0b987018d217dcb271d2dd39fc85a36d91a0245cd97967d9dd3350b )       │
│  │ Version: 512614656                                                                             │
│  │ Digest: 57d4rmExga568Z87AwZL2YmbqjG1bunZC94eDK11BvTm                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x610088f1b601a5a5735d35b8c85376a6333bd5ac3c02a811f1903adf3a104db5                         │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: FR2CJCbmRMGhM4Ry5rSe8ZdhDtT7AUu6FE8mVWnqP8Ux                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x6ef680c9f0b987018d217dcb271d2dd39fc85a36d91a0245cd97967d9dd3350b                         │
│  │ Owner: Shared( 512614656 )                                                                     │
│  │ Version: 512614656                                                                             │
│  │ Digest: FiED2PoYciJSTLZN3V88bixeHSJm7cQcKJMWjzd3m1WZ                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x7ddd2f0ad599547051d7dd3e095c3647f85cbdd0d66c7e1d28634a80f6841025                         │
│  │ Owner: Shared( 512614656 )                                                                     │
│  │ Version: 512614656                                                                             │
│  │ Digest: H1UC2pn3CELcEjorp6YKBybA9ifUCpWNwQnwUHvcXPeh                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x819ec02f5ce58a26c84755e99cd0c79d304bc114782d45fc16bc6bae14ded2d6                         │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: FoEwu1XamDBYmfFU2krgk99p95p1mDLDh1bUYsn2QhrD                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: FRpTX2q1XLiJGtoN6wxwp4n8HAFXjwYFn8HrrqMoBf9x                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x8c94b6c0172798cacc66e5abdf32c09b725136e0bc5b535dd6e27cd547d817c6                         │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: Fq8uVffsCyZwbE7R3yELNWGeo6DHK1EX4WLNw2uR7iTM                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xc7753a26b93abe75d70cc7af715b4e4050b11e816c533a3703a1a4b7f45017bb                         │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: 6PUMdLAchg3vkRLJXLXdUp1csTcn2Z2E3yA14tDvSLLr                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xdea25d5c780a316707a13c4b9c3fdab5b95195b0e0fb5ec46896f932e928e79c                         │
│  │ Owner: Object ID: ( 0x6ef680c9f0b987018d217dcb271d2dd39fc85a36d91a0245cd97967d9dd3350b )       │
│  │ Version: 512614656                                                                             │
│  │ Digest: DGSCLZRnoJGV21jM7D37sueX7pvefNh18ydsSuPPBgJU                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x8390ea75bcfa7a57f0820a17223ea475c7c1cab99517a64964ae2fec7dce28f5                         │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: GmRXWvYAiuMujcpfzUThNcoocLdGya2JzwJB8UAxsbZ5                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x8390ea75bcfa7a57f0820a17223ea475c7c1cab99517a64964ae2fec7dce28f5                         │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )  │
│  │ Version: 512614656                                                                             │
│  │ Digest: GmRXWvYAiuMujcpfzUThNcoocLdGya2JzwJB8UAxsbZ5                                           │
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
│  │ EventID: 2naMEnB4M1xJH86R4nUkZtJiivSbfopfYi7iSTP3PJue:0                                                                                                                                                   │
│  │ PackageID: 0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                │
│  │ EventType: 0x2::display::DisplayCreated<0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3::vram::VramNFT>                                                                                │
│  │ ParsedJSON:                                                                                                                                                                                               │
│  │   ┌────┬────────────────────────────────────────────────────────────────────┐                                                                                                                             │
│  │   │ id │ 0xc7753a26b93abe75d70cc7af715b4e4050b11e816c533a3703a1a4b7f45017bb │                                                                                                                             │
│  │   └────┴────────────────────────────────────────────────────────────────────┘                                                                                                                             │
│  └──                                                                                                                                                                                                         │
│  ┌──                                                                                                                                                                                                         │
│  │ EventID: 2naMEnB4M1xJH86R4nUkZtJiivSbfopfYi7iSTP3PJue:1                                                                                                                                                   │
│  │ PackageID: 0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                │
│  │ EventType: 0x2::display::VersionUpdated<0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3::vram::VramNFT>                                                                                │
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
│  │   │ id      │ 0xc7753a26b93abe75d70cc7af715b4e4050b11e816c533a3703a1a4b7f45017bb                                                                                                                        │ │
│  │   ├─────────┼───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│  │   │ version │ 1                                                                                                                                                                                         │ │
│  │   └─────────┴───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘ │
│  └──                                                                                                                                                                                                         │
│  ┌──                                                                                                                                                                                                         │
│  │ EventID: 2naMEnB4M1xJH86R4nUkZtJiivSbfopfYi7iSTP3PJue:2                                                                                                                                                   │
│  │ PackageID: 0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3                                                                                                                             │
│  │ Transaction Module: vram                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                │
│  │ EventType: 0x2::transfer_policy::TransferPolicyCreated<0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3::vram::VramNFT>                                                                 │
│  │ ParsedJSON:                                                                                                                                                                                               │
│  │   ┌────┬────────────────────────────────────────────────────────────────────┐                                                                                                                             │
│  │   │ id │ 0x6ef680c9f0b987018d217dcb271d2dd39fc85a36d91a0245cd97967d9dd3350b │                                                                                                                             │
│  │   └────┴────────────────────────────────────────────────────────────────────┘                                                                                                                             │
│  └──                                                                                                                                                                                                         │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                                                                                                                                                                                   │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                                                                                                                                                                                 │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x29cc7f82b383623c3f3c17d857330fc7012f60d152a8f29c00253e6e30016986                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                                                                    │
│  │ Owner: Object ID: ( 0x6ef680c9f0b987018d217dcb271d2dd39fc85a36d91a0245cd97967d9dd3350b )                                                                                                                                                                      │
│  │ ObjectType: 0x2::dynamic_field::Field<0x2::transfer_policy::RuleKey<0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3::royalty_rule::Rule>, 0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3::royalty_rule::Config>        │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: 57d4rmExga568Z87AwZL2YmbqjG1bunZC94eDK11BvTm                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x610088f1b601a5a5735d35b8c85376a6333bd5ac3c02a811f1903adf3a104db5                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::transfer_policy::TransferPolicyCap<0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3::vram::VramNFT>                                                                                                                        │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: FR2CJCbmRMGhM4Ry5rSe8ZdhDtT7AUu6FE8mVWnqP8Ux                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x6ef680c9f0b987018d217dcb271d2dd39fc85a36d91a0245cd97967d9dd3350b                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                                                                    │
│  │ Owner: Shared( 512614656 )                                                                                                                                                                                                                                    │
│  │ ObjectType: 0x2::transfer_policy::TransferPolicy<0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3::vram::VramNFT>                                                                                                                           │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: FiED2PoYciJSTLZN3V88bixeHSJm7cQcKJMWjzd3m1WZ                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x7ddd2f0ad599547051d7dd3e095c3647f85cbdd0d66c7e1d28634a80f6841025                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                                                                    │
│  │ Owner: Shared( 512614656 )                                                                                                                                                                                                                                    │
│  │ ObjectType: 0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3::vram::Treasury                                                                                                                                                                │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: H1UC2pn3CELcEjorp6YKBybA9ifUCpWNwQnwUHvcXPeh                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x819ec02f5ce58a26c84755e99cd0c79d304bc114782d45fc16bc6bae14ded2d6                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::package::Publisher                                                                                                                                                                                                                           │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: FoEwu1XamDBYmfFU2krgk99p95p1mDLDh1bUYsn2QhrD                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x8c94b6c0172798cacc66e5abdf32c09b725136e0bc5b535dd6e27cd547d817c6                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::package::UpgradeCap                                                                                                                                                                                                                          │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: Fq8uVffsCyZwbE7R3yELNWGeo6DHK1EX4WLNw2uR7iTM                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0xc7753a26b93abe75d70cc7af715b4e4050b11e816c533a3703a1a4b7f45017bb                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::display::Display<0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3::vram::VramNFT>                                                                                                                                          │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: 6PUMdLAchg3vkRLJXLXdUp1csTcn2Z2E3yA14tDvSLLr                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0xdea25d5c780a316707a13c4b9c3fdab5b95195b0e0fb5ec46896f932e928e79c                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                                                                    │
│  │ Owner: Object ID: ( 0x6ef680c9f0b987018d217dcb271d2dd39fc85a36d91a0245cd97967d9dd3350b )                                                                                                                                                                      │
│  │ ObjectType: 0x2::dynamic_field::Field<0x2::transfer_policy::RuleKey<0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3::kiosk_lock_rule::Rule>, 0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3::kiosk_lock_rule::Config>  │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: DGSCLZRnoJGV21jM7D37sueX7pvefNh18ydsSuPPBgJU                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│ Mutated Objects:                                                                                                                                                                                                                                                 │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ ObjectID: 0x8390ea75bcfa7a57f0820a17223ea475c7c1cab99517a64964ae2fec7dce28f5                                                                                                                                                                                  │
│  │ Sender: 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427                                                                                                                                                                                    │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )                                                                                                                                                                 │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                                                                                                                                                                                    │
│  │ Version: 512614656                                                                                                                                                                                                                                            │
│  │ Digest: GmRXWvYAiuMujcpfzUThNcoocLdGya2JzwJB8UAxsbZ5                                                                                                                                                                                                          │
│  └──                                                                                                                                                                                                                                                             │
│ Published Objects:                                                                                                                                                                                                                                               │
│  ┌──                                                                                                                                                                                                                                                             │
│  │ PackageID: 0x835515170ee826c646fafd5c41602edf9474a42649983472119cd8e98c7318c3                                                                                                                                                                                 │
│  │ Version: 1                                                                                                                                                                                                                                                    │
│  │ Digest: FRpTX2q1XLiJGtoN6wxwp4n8HAFXjwYFn8HrrqMoBf9x                                                                                                                                                                                                          │
│  │ Modules: kiosk_lock_rule, royalty_rule, vram                                                                                                                                                                                                                  │
│  └──                                                                                                                                                                                                                                                             │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0x7f2f424e0b808b5ef40cd15bb682ca716c02fec2e5627aed836a55441ee27427 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -87681080                                                                              │
│  └──                                                                                              │
╰────────────────────────────────────────────────────────────────────