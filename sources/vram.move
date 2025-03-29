/// The VRAM Genesis NFT Collection - Implementation of the Axolotl Standard for evolving NFTs on Sui blockchain
///
/// The Genesis VRAM NFT Collection represents the first implementation of the Axolotl Standard 
/// on the Sui blockchain, enabling true on-chain evolution of digital assets. This limited 
/// collection of 3,333 NFTs serves as the gateway for early supporters to join the VRAM ecosystem.
///
/// The Core doesn't spin or pulse. It calculates probabilities that shouldn't exist, creating 
/// solutions for questions no one thought to ask. With each interaction, your digital signature 
/// is permanently etched on the Walrus protocol—evolution captured on-chain forever, 
/// your influence preserved in the system's expanding consciousness.
///
/// Key Features:
/// - Object-Centric Model: Leverages Sui's unique object-centric model for true on-chain evolution
/// - Hybrid Storage: Combines on-chain metadata with decentralized blob storage (Walrus)
/// - Evolution Mechanics: Multiple evolution patterns including reveal-based, attribute-based, and multi-stage
/// - Marketplace Integration: Full compatibility with Sui's Kiosk system
/// - On-Chain Permanence: Complete history of all evolution states preserved on-chain
module vram::vram;

// Import necessary Sui framework modules
use sui::address;
use sui::display;
use sui::package;
use sui::url::{Self, Url};
use std::string::{utf8, String};
use sui::object::{Self, ID, UID};
use sui::event;
use sui::transfer;
use sui::transfer::{public_transfer};
use sui::tx_context::{sender, Self, TxContext};
use sui::vec_map::{Self, VecMap};
use sui::sui::SUI;
use sui::balance::{Self, Balance};
use sui::coin::{Self, Coin};

// Import custom modules for kiosk lock and royalty rules
use vram::kiosk_lock_rule;
use vram::royalty_rule;

// Constants
const BASE36: vector<u8> = b"0123456789abcdefghijklmnopqrstuvwxyz"; // Base36 encoding characters
const VISUALIZATION_SITE: address = @0xb747da318c311052b21eddbd46d43a6f04c6689add62f76d58bdd9866a60f3be; // Site for NFT visualization
const ADMIN: address = @0x843a4c7ad62d90c8b6ad23a807baa5ade4ee2efac64e4a31d8b31e4caed282f5; // New admin wallet address

/// Treasury struct to manage NFT collection state and funds
/// This implements the State Management component of the Axolotl Standard,
/// tracking current states and evolution history for all NFTs
public struct Treasury has key {
    id: UID,
    whitelistOf: VecMap<address, u64>, // Tracks whitelisted users and their status
    mintedlistOf: VecMap<address, u64>, // Tracks number of NFTs minted per user
    suiCoinsTreasury: Balance<SUI>,    // SUI tokens held in treasury
    publicMintTotal: u64,              // Total NFTs minted through public mint
    whitelistMintTotal: u64,           // Total NFTs minted through whitelist
    
    // Evolution Mechanics - State Management for Axolotl Standard
    imgListOf: VecMap<address, String>,  // Maps user addresses to their NFT images (for evolution)
    attrKeysListOf: VecMap<address, vector<String>>,  // Maps user addresses to their NFT attribute keys
    attrValuesListOf: VecMap<address, vector<String>>,  // Maps user addresses to their NFT attribute values
    imgHistoryOf: VecMap<u64, String>,  // Historical record of NFT images (for on-chain permanence)
    
    totalSupply: u64,                  // Maximum total supply of NFTs
    supply: u64,                       // Current number of NFTs minted
    status: bool,                      // Collection status (active/inactive)
    fee: u64,                          // Minting fee in SUI
}

/// NFT struct representing a VRAM NFT
/// Implements the Axolotl Standard for evolving digital assets
public struct VramNFT has key, store {
    id: UID,
    name: String,
    image_url: String,       // References blob storage hash through Walrus (decentralized blob storage)
    description: String,
    b36addr: String,         // Unique base36 encoded address for permanence and visualization
    attributes: VecMap<String, String>,  // Evolving attributes according to Axolotl Standard
    number_id: u64,
}

/* ========== EVENTS ========== */

/// Event emitted when admin updates minting fee
public struct AdminUpdateFee has copy, drop {
    user: address,
    amount: u64
}

/// Event emitted when user mints NFT through public mint
public struct PublicMint has copy, drop {
    user: address,
    price: u64
}

/// Event emitted when user mints NFT through whitelist
public struct WhitelistMint has copy, drop {
    user: address
}

/// Event emitted when admin withdraws funds from treasury
public struct AdminSuiWithdrawn has copy, drop {
    user: address,
    amount: u64
}

/// Event emitted when admin updates total supply
public struct AdminUpdateSupply has copy, drop {
    user: address,
    amount: u64
}

// One-time witness for display
public struct VRAM has drop {}

/// Initialize the NFT collection
/// Sets up the Axolotl Standard framework including:
/// - Display configuration for NFT visualization
/// - Kiosk system compatibility for marketplace integration
/// - Transfer policy enforcement with royalty rules
fun init(otw: VRAM, ctx: &mut TxContext) {
    // Claim publisher rights
    let publisher = package::claim(otw, ctx);
    let mut display = display::new<VramNFT>(&publisher, ctx);

    // Set up display properties for the collection
    display.add(
        b"collection_name".to_string(),
        b"VRAM Genesis NFT Collection".to_string(),
    );

    display.add(
        b"collection_description".to_string(),
        b"The Genesis VRAM NFT Collection represents the first implementation of the Axolotl Standard on the Sui blockchain, enabling true on-chain evolution of digital assets.".to_string(),
    );

    display.add(
        b"collection_media_url".to_string(),
        b"https://aggregator.walrus-mainnet.walrus.space/v1/blobs/WtgIqQ3NBOixUUedXI-YL1jgMjKxfSrJMGNUyHiuZ1Q".to_string(),
    );

    // Set up dynamic display properties
    display.add(
        b"link".to_string(),
        b"https://vramai.wal.app/?nft={b36addr}".to_string(),
    );
    display.add(
        b"name".to_string(),
        b"VRAM Genesis Fragment #{number_id}".to_string(),
    );
    display.add(
        b"image_url".to_string(),
        b"{image_url}".to_string(),
    );
    display.add(
        b"number_id".to_string(),
        b"{number_id}".to_string(),
    );
    display.add(
        b"attributes".to_string(),
        b"{attributes}".to_string(),
    );
    display.add(
        b"walrus site address".to_string(),
        VISUALIZATION_SITE.to_string(),
    );
    display.update_version();

    // Set up transfer policy with kiosk lock and royalty rules
    let (v2, v3) = 0x2::transfer_policy::new<VramNFT>(&publisher, ctx);
    let mut v4 = v3;
    let mut v5 = v2;

    kiosk_lock_rule::add<VramNFT>(&mut v5, &v4);
    royalty_rule::add<VramNFT>(&mut v5, &v4, 500, 0);

    // Transfer publisher and display to sender
    transfer::public_transfer(publisher, ctx.sender());
    transfer::public_transfer(display, ctx.sender());

    0x2::transfer::public_transfer<0x2::transfer_policy::TransferPolicyCap<VramNFT>>(v4, 0x2::tx_context::sender(ctx));
    0x2::transfer::public_share_object<0x2::transfer_policy::TransferPolicy<VramNFT>>(v5);

    // Initialize and share treasury
    transfer::share_object(Treasury{
        id: object::new(ctx),
        suiCoinsTreasury: balance::zero<SUI>(),
        whitelistOf: vec_map::empty<address, u64>(),
        mintedlistOf: vec_map::empty<address, u64>(),
        publicMintTotal: 0,
        whitelistMintTotal: 0,
        imgListOf: vec_map::empty<address, String>(),
        attrKeysListOf: vec_map::empty<address, vector<String>>(),
        attrValuesListOf: vec_map::empty<address, vector<String>>(),
        imgHistoryOf: vec_map::empty<u64, String>(),
        totalSupply: 3333,                        // Maximum supply set to 3333
        supply: 0,                              // Initial supply is 0
        fee:  15_000_000_000,                   // Initial minting fee
        status: true,
    });
}

/// Create a new NFT instance
/// The base implementation of Axolotl Standard with initial state rendering
/// and preparation for future evolution
fun new(number_id : u64, description : String, keys: vector<0x1::string::String>, values: vector<0x1::string::String>, ctx: &mut TxContext): VramNFT {
    let id = object::new(ctx);
    let b36addr = to_b36(id.uid_to_address());
    let image_url = b"https://aggregator.walrus-mainnet.walrus.space/v1/blobs/WtgIqQ3NBOixUUedXI-YL1jgMjKxfSrJMGNUyHiuZ1Q".to_string();
    VramNFT {
        id, 
        name: b"VRAM Genesis Fragment".to_string(),
        image_url,
        b36addr,
        number_id,
        attributes: 0x2::vec_map::from_keys_values<0x1::string::String, 0x1::string::String>(keys, values),
        description
    }
}

/// Admin function to mint test NFTs
entry fun mint(number_id : u64, description : String, keys: vector<0x1::string::String>, values: vector<0x1::string::String>, ctx: &mut TxContext) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can mint test NFTs
    let nft = new(number_id, description, keys, values, ctx);
    transfer::transfer(nft, tx_context::sender(ctx));
}

/// Update NFT display properties
/// Implements Axolotl Standard's Reveal-based Evolution mechanism
/// Allows NFTs to transform between different visual states (GPU/character)
/// while maintaining their identity and on-chain permanence
public entry fun reveal_display(
    display: &mut VramNFT,
    treasury: &mut Treasury,
    is_revealed: bool,            // Toggle between GPU and character image
    gpu_image_hash: String,       // GPU image hash in Walrus (decentralized blob storage)
    character_image_hash: String, // Character image hash in Walrus (decentralized blob storage)
    ctx: &TxContext
) {
    let image_hash = if (is_revealed) {
        character_image_hash
    } else {
        gpu_image_hash
    };
    display.image_url = image_hash;

    let account = tx_context::sender(ctx);
    // Update image if user has custom image
    if(vec_map::contains(&treasury.imgListOf, &account)){
        let imgOf_account = vec_map::get_mut(&mut treasury.imgListOf, &account);
        let img = *imgOf_account;
        display.image_url = img;
    }
}

/// Admin function to add image history
/// Records evolution states in the on-chain permanence record
/// Part of the Axolotl Standard's historical tracking mechanism
public entry fun add_imglist_history(
    history: u64,
    desc: String,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can add history
    if(!vec_map::contains(&treasury.imgHistoryOf, &history)){
        vec_map::insert(&mut treasury.imgHistoryOf, history, desc);
    }
}

/// Admin function to add user to whitelist
public entry fun add_whitelist(
    receiver: address,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can add to whitelist
    if(!vec_map::contains(&treasury.whitelistOf, &receiver)){
        vec_map::insert(&mut treasury.whitelistOf, receiver, 1);
    }
}

/// Admin function to add attribute keys for a user
/// Part of the Axolotl Standard's attribute-based evolution mechanism
/// Enables attribute modifications while maintaining NFT identity
public entry fun add_attrkeys_list(
    receiver: address,
    keys: vector<0x1::string::String>,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can add attribute keys
    if(!vec_map::contains(&treasury.attrKeysListOf, &receiver)){
        vec_map::insert(&mut treasury.attrKeysListOf, receiver, keys);
    }
}

/// Admin function to remove attribute keys for a user
public entry fun remove_attrkeys_list(
    receiver: address,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can remove attribute keys
    if(vec_map::contains(&treasury.attrKeysListOf, &receiver)){
        vec_map::remove(&mut treasury.attrKeysListOf, &receiver);
    }
}

/// Admin function to add attribute values for a user
/// Part of the Axolotl Standard's attribute-based evolution mechanism
/// Enables attribute modifications while maintaining NFT identity
public entry fun add_attrvalues_list(
    receiver: address,
    values: vector<0x1::string::String>,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can add attribute values
    if(!vec_map::contains(&treasury.attrValuesListOf, &receiver)){
        vec_map::insert(&mut treasury.attrValuesListOf, receiver, values);
    }
}

/// Admin function to remove attribute values for a user
public entry fun remove_attrvalues_list(
    receiver: address,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can remove attribute values
    if(vec_map::contains(&treasury.attrValuesListOf, &receiver)){
        vec_map::remove(&mut treasury.attrValuesListOf, &receiver);
    }
}

/// Admin function to add custom image for a user
/// Implements the Axolotl Standard's evolution mechanism
/// Enables visual transformation of NFTs over time
public entry fun add_imglist(
    receiver: address,
    img: String,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can add custom images
    if(!vec_map::contains(&treasury.imgListOf, &receiver)){
        vec_map::insert(&mut treasury.imgListOf, receiver, img);
    }
}

/// Admin function to remove custom image for a user
public entry fun remove_imglist(
    receiver: address,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can remove custom images
    if(vec_map::contains(&treasury.imgListOf, &receiver)){
        vec_map::remove(&mut treasury.imgListOf, &receiver);
    }
}

/// Admin function to remove user from whitelist
public entry fun remove_whitelist(
    receiver: address,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can remove from whitelist
    if(vec_map::contains(&treasury.whitelistOf, &receiver)){
        vec_map::remove(&mut treasury.whitelistOf, &receiver);
    }
}

/// Whitelist minting function
/// Creates NFT with Kiosk lock for marketplace integration according to the Axolotl Standard
public entry fun whitelist_mint(
    image_blob_id : String, 
    description : String, 
    keys: vector<0x1::string::String>, 
    values: vector<0x1::string::String>, 
    vramPolicy: &0x2::transfer_policy::TransferPolicy<VramNFT>, 
    treasury: &mut Treasury, 
    ctx: &mut TxContext
) {
    // Check supply limits
    let maxSupply = treasury.whitelistMintTotal + treasury.publicMintTotal;
    assert!(maxSupply <= treasury.totalSupply, 3);

    let account = tx_context::sender(ctx);

    // Process whitelist mint if user is whitelisted
    if(vec_map::contains(&treasury.whitelistOf, &account)){
        let balanceOf_account = vec_map::get_mut(&mut treasury.whitelistOf, &account);
        let amount = *balanceOf_account;

        if(amount == 1){
            // Create and transfer NFT
            treasury.supply = treasury.supply + 1;
            let number_id = treasury.supply;
            
            let nft = new(number_id, description, keys, values, ctx);
            let (v3, v4) = 0x2::kiosk::new(ctx);
            let mut v5 = v4;
            let mut v6 = v3;
            0x2::kiosk::lock<VramNFT>(&mut v6, &v5, vramPolicy, nft);
            0x2::transfer::public_transfer<0x2::kiosk::KioskOwnerCap>(v5, account);
            0x2::transfer::public_share_object<0x2::kiosk::Kiosk>(v6);

            // Update tracking variables
            treasury.whitelistMintTotal = treasury.whitelistMintTotal + 1;
            *balanceOf_account = 2;

            if(!vec_map::contains(&treasury.mintedlistOf, &account)){
                vec_map::insert(&mut treasury.mintedlistOf, account, 1);
            }else{
                let mintedOf_account = vec_map::get_mut(&mut treasury.mintedlistOf, &account);
                *mintedOf_account = *mintedOf_account + 1;
            };

            event::emit(WhitelistMint{user:tx_context::sender(ctx)});
        };
    };
}

/// Admin function to update NFT properties
/// Implements the Axolotl Standard's evolution mechanics
public entry fun update_nft_admin(
    name : String, 
    description : String, 
    image_url : String, 
    keys: vector<0x1::string::String>, 
    values: vector<0x1::string::String>, 
    ownerKiosk: &mut 0x2::kiosk::Kiosk, 
    ownerKioskCap: &0x2::kiosk::KioskOwnerCap, 
    vramObjectId: 0x2::object::ID, 
    treasury: &mut Treasury, 
    ctx: &mut TxContext
) {
    let v0 = 0x2::kiosk::borrow_mut<VramNFT>(ownerKiosk, ownerKioskCap, vramObjectId);
    v0.name = name;
    v0.description = description;
    v0.image_url = image_url;
    v0.attributes = 0x2::vec_map::from_keys_values<0x1::string::String, 0x1::string::String>(keys, values);
}

/// Function to reveal and update NFT properties
/// Implements the Axolotl Standard's reveal-based and attribute-based evolution
/// This enables multi-stage evolution with both visual and metadata changes
public entry fun reveal_update_nft(
    name : String, 
    description : String, 
    image_url : String, 
    keys: vector<0x1::string::String>, 
    values: vector<0x1::string::String>, 
    ownerKiosk: &mut 0x2::kiosk::Kiosk, 
    ownerKioskCap: &0x2::kiosk::KioskOwnerCap, 
    vramObjectId: 0x2::object::ID, 
    treasury: &mut Treasury, 
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    // Update image if user has custom image
    if(vec_map::contains(&treasury.imgListOf, &account)){
        let imgOf_account = vec_map::get_mut(&mut treasury.imgListOf, &account);
        let img = *imgOf_account;
        
        let v0 = 0x2::kiosk::borrow_mut<VramNFT>(ownerKiosk, ownerKioskCap, vramObjectId);
        v0.image_url = img;
    };

    // Update attributes if user has custom attributes
    if(vec_map::contains(&treasury.attrKeysListOf, &account) && vec_map::contains(&treasury.attrValuesListOf, &account)){
        let keyOf_account = vec_map::get_mut(&mut treasury.attrKeysListOf, &account);
        let _keys = *keyOf_account;

        let valuesOf_account = vec_map::get_mut(&mut treasury.attrValuesListOf, &account);
        let _values = *valuesOf_account;

        let v0 = 0x2::kiosk::borrow_mut<VramNFT>(ownerKiosk, ownerKioskCap, vramObjectId);
        v0.attributes = 0x2::vec_map::from_keys_values<0x1::string::String, 0x1::string::String>(_keys, _values);
    };
}

/// Public minting function
/// Creates NFT with Kiosk lock for marketplace integration according to the Axolotl Standard
/// Ensures compatibility with Sui's transfer policy framework for royalties
public entry fun public_mint(
    image_blob_id : String, 
    description : String, 
    payment: Coin<SUI>, 
    keys: vector<0x1::string::String>, 
    values: vector<0x1::string::String>, 
    vramPolicy: &0x2::transfer_policy::TransferPolicy<VramNFT>, 
    treasury: &mut Treasury, 
    ctx: &mut TxContext
) {
    let amount = coin::value(&payment);
    let account = tx_context::sender(ctx);

    // Verify payment amount
    assert!(amount >= treasury.fee, 2);

    // Check supply limits
    let maxSupply = treasury.whitelistMintTotal + treasury.publicMintTotal;
    assert!(maxSupply <= treasury.totalSupply, 3);

    // Check minting limits per user
    if(!vec_map::contains(&treasury.mintedlistOf, &account)){
        vec_map::insert(&mut treasury.mintedlistOf, account, 1);
    }else{
        let mintedOf_account = vec_map::get_mut(&mut treasury.mintedlistOf, &account);
        assert!(*mintedOf_account <= 10, 4); // Max 10 NFTs per user
        *mintedOf_account = *mintedOf_account + 1;
    };

    // Transfer payment to treasury
    let balance = coin::into_balance(payment);
    balance::join(&mut treasury.suiCoinsTreasury, balance);

    // Create and transfer NFT
    treasury.supply = treasury.supply + 1;
    let number_id = treasury.supply;

    let nft = new(number_id, description, keys, values, ctx);

    let (v3, v4) = 0x2::kiosk::new(ctx);
    let mut v5 = v4;
    let mut v6 = v3;
    0x2::kiosk::lock<VramNFT>(&mut v6, &v5, vramPolicy, nft);
    0x2::transfer::public_transfer<0x2::kiosk::KioskOwnerCap>(v5, account);
    0x2::transfer::public_share_object<0x2::kiosk::Kiosk>(v6);

    treasury.publicMintTotal = treasury.publicMintTotal + 1;

    event::emit(PublicMint{user:tx_context::sender(ctx), price: amount});
}

/// Admin function to update minting fee
public entry fun admin_update_price(treasury: &mut Treasury, price: u64, ctx: &mut TxContext) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can update price
    treasury.fee = price;
    event::emit(AdminUpdateFee{user:tx_context::sender(ctx), amount: price});
}

/// Admin function to update total supply
public entry fun admin_update_totalsupply(treasury: &mut Treasury, supply:u64, ctx: &mut TxContext) {
    let account = tx_context::sender(ctx);
    assert!(ADMIN == account, 0); // Only admin can update supply
    treasury.totalSupply = supply;
    event::emit(AdminUpdateSupply{user:tx_context::sender(ctx), amount: supply});
}

/// Admin function to withdraw funds from treasury
public entry fun admin_withdraw(treasury: &mut Treasury, ctx: &mut TxContext) {
    let account = tx_context::sender(ctx);
    let totalSuiSupply = balance::value(&treasury.suiCoinsTreasury);
    assert!(ADMIN == account, 0); // Only admin can withdraw
    
    // Transfer all SUI to admin
    let withdrawalAmount = coin::take<SUI>(&mut treasury.suiCoinsTreasury, totalSuiSupply, ctx);
    transfer::public_transfer(withdrawalAmount, tx_context::sender(ctx));

    event::emit(AdminSuiWithdrawn{user:tx_context::sender(ctx), amount: totalSuiSupply});
}

/// Function to withdraw collection royalties
/// Implements the transfer policy enforcement aspect of the Axolotl Standard
/// Ensures creators receive royalties from marketplace transactions
public entry fun withdraw_collection_royalty(
    vramPolicy: &mut 0x2::transfer_policy::TransferPolicy<VramNFT>, 
    vramPolicyCap: &0x2::transfer_policy::TransferPolicyCap<VramNFT>,
    amount: u64, 
    receiver: address, 
    ctx: &mut 0x2::tx_context::TxContext
) {
    let v0 = if (amount == 0) {
        0x2::transfer_policy::withdraw(vramPolicy, vramPolicyCap, 0x1::option::none<u64>(), ctx)
    } else {
        0x2::transfer_policy::withdraw(vramPolicy, vramPolicyCap, 0x1::option::some<u64>(amount), ctx)
    };
    if (0x2::tx_context::sender(ctx) == receiver) {
        0x2::pay::keep<0x2::sui::SUI>(v0, ctx);
    } else {
        0x2::transfer::public_transfer<0x2::coin::Coin<0x2::sui::SUI>>(v0, receiver);
    };
}

/// Convert address to base36 string representation
/// Part of the Axolotl Standard's on-chain permanence and visualization mechanic
/// Enables unique identifiers for NFTs that can be used in external visualization services
public fun to_b36(addr: address): String {
    let source = address::to_bytes(addr);
    let size = 2 * vector::length(&source);
    let b36copy = BASE36;
    let base = vector::length(&b36copy);
    let mut encoding = vector::tabulate!(size, |_| 0);
    let mut high = size - 1;

    // Convert address bytes to base36
    source.length().do!(|j| {
        let mut carry = source[j] as u64;
        let mut it = size - 1;
        while (it > high || carry != 0) {
            carry = carry + 256 * (encoding[it] as u64);
            let value = (carry % base) as u8;
            *&mut encoding[it] = value;
            carry = carry / base;
            it = it - 1;
        };
        high = it;
    });

    // Build final string
    let mut str: vector<u8> = vector[];
    let mut k = 0;
    let mut leading_zeros = true;
    while (k < vector::length(&encoding)) {
        let byte = encoding[k] as u64;
        if (byte != 0 && leading_zeros) {
            leading_zeros = false;
        };
        let char = b36copy[byte];
        if (!leading_zeros) {
            str.push_back(char);
        };
        k = k + 1;
    };
    str.to_string()
}