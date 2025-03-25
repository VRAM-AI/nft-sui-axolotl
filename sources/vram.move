/// The flatland NFT game project.
module vram::vram;

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

const BASE36: vector<u8> = b"0123456789abcdefghijklmnopqrstuvwxyz";
const VISUALIZATION_SITE: address = @0x52a7bf755a2c311fe6ef71ddbbebe6f4a795ac2302710ee24ad2b7f1b57ccf02;
    //@0xc1a87ae29ed643bb85be2261fbcf0ce016443fa0eddbec2d172d01bbf3b62448;

const ADMIN: address = @0xa8125cc1a3c3d425a317d405b4089402cf0a9e20fb8a484a0f98973baec09c0b; //@0x0c2b1bd49d0d29cdad7e477f1743f8ecc87dcff274205d8d838b48302896ffe8;

public struct Treasury has key {
        id: UID,

        whitelistOf: VecMap<address, u64>, // Mapping that keeps track of users' whitelist

        suiCoinsTreasury: Balance<SUI>,    // Sui coins held in the treasury,

        publicMintTotal: u64,              // minted count with publicMint

        whitelistMintTotal: u64,           // minted count with whitelistMint

        imgListOf: VecMap<address, String>,  // Mapping that keeps track of users' img

        imgHistoryOf: VecMap<u64, String>,  // Mapping that keeps track of users' img

        totalSupply: u64,                  // total supply

        supply: u64,                       // supply

        status: bool,                      // false: inactive, true: active

        fee: u64,                          // mint fee
}

public struct VramNFT has key, store {
    id: UID,
    image_url: String,
    b36addr: String,
    number_id: u64,
    description: String,
}

/* ========== EVENTS ========== */


public struct AdminUpdateFee has copy, drop{
    user: address,
    amount: u64
}

public struct PublicMint has copy, drop{
    user: address,
    price: u64
}

public struct WhitelistMint has copy, drop{
    user: address
}

public struct AdminSuiWithdrawn has copy, drop{
    user: address,
    amount: u64
}

public struct AdminUpdateSupply has copy, drop{
    user: address,
    amount: u64
}

// OTW for display.
public struct VRAM has drop {}

fun init(otw: VRAM, ctx: &mut TxContext) {
    let publisher = package::claim(otw, ctx);
    let mut display = display::new<VramNFT>(&publisher, ctx);

    display.add(
        b"link".to_string(),
        b"https://vram.walrus.site/?nft={b36addr}".to_string(),
    );
    display.add(
        b"image_url".to_string(),
        b"{image_url}".to_string(),
    );
    display.add(
        b"num".to_string(),
        b"{num}".to_string(),
    );
    display.add(
        b"walrus site address".to_string(),
        VISUALIZATION_SITE.to_string(),
    );
    display.update_version();

    transfer::public_transfer(publisher, ctx.sender());
    transfer::public_transfer(display, ctx.sender());

    transfer::share_object(Treasury{
        id: object::new(ctx),
        suiCoinsTreasury: balance::zero<SUI>(),
        whitelistOf: vec_map::empty<address, u64>(),
        publicMintTotal: 0,
        whitelistMintTotal: 0,
        imgListOf: vec_map::empty<address, String>(),
        imgHistoryOf: vec_map::empty<u64, String>(),
        totalSupply: 5000,
        supply: 0,                        // supply number
        fee: 10_000_000,                  // fee 
        status: true,
    });

}


fun new(number_id : u64, description : String, ctx: &mut TxContext): VramNFT {
    let id = object::new(ctx);
    let b36addr = to_b36(id.uid_to_address());
    // https://i.ibb.co/Fqc3c2Xb/Whats-App-Video-2025-03-21-at-11-00-30-PM.gif
    // https://aggregator.walrus-testnet.walrus.space/v1/blobs/DFn0FyWrIrlHSZVWEC0PDTbbDUapHibZhVKmlAtVG_8
    // https://i.ibb.co/BV7LR3pD/vram-gpu.png
    let image_url = b"https://i.ibb.co/Fqc3c2Xb/Whats-App-Video-2025-03-21-at-11-00-30-PM.gif".to_string();
    VramNFT {
        id,
        image_url,
        b36addr,
        number_id,
        description
    }
}


// test nft mint
entry fun mint(number_id : u64, description : String, ctx: &mut TxContext) {
    let account = tx_context::sender(ctx);

    // check the admin
    assert!(ADMIN == account, 0);

    let nft = new( number_id, description, ctx);
    transfer::transfer(nft, tx_context::sender(ctx));
}

public entry fun reveal_display(
    display: &mut VramNFT,
    treasury: &mut Treasury,
    is_revealed: bool,            // Which one to show
    gpu_image_hash: String,    // GPU image hash
    character_image_hash: String, // Character image hash
    ctx: &TxContext
) {
    // assert!(tx_context::sender(ctx) == object::owner(display), 0);
    let image_hash = if (is_revealed) {
        character_image_hash
    } else {
        gpu_image_hash
    };
    display.image_url = image_hash;

    let account = tx_context::sender(ctx);

    if(vec_map::contains(&treasury.imgListOf, &account)){
        let imgOf_account = vec_map::get_mut(&mut treasury.imgListOf, &account);
        let img = *imgOf_account;
        display.image_url = img;
    }
}

/// add history nft with ADMIN
public entry fun add_imglist_hisotyr(
    history: u64,
    desc: String,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    // check  
    let account = tx_context::sender(ctx);
    // check the admin
    assert!(ADMIN == account, 0);
    // Initialize history mappings if not already present
    if(!vec_map::contains(&treasury.imgHistoryOf, &history)){
        vec_map::insert(&mut treasury.imgHistoryOf, history, desc);
    }
}

/// add whitelist nft with ADMIN
public entry fun add_whitelist(
    receiver: address,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    // check whitelist && add whitelist
    let account = tx_context::sender(ctx);
    // check the admin
    assert!(ADMIN == account, 0);
    // Initialize user mappings if not already present
    if(!vec_map::contains(&treasury.whitelistOf, &receiver)){
        vec_map::insert(&mut treasury.whitelistOf, receiver, 1);
    }
}

/// add imglist nft with ADMIN
public entry fun add_imglist(
    receiver: address,
    img: String,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    // check whitelist && add whitelist
    let account = tx_context::sender(ctx);
    // check the admin
    assert!(ADMIN == account, 0);
    // Initialize user mappings if not already present
    if(!vec_map::contains(&treasury.imgListOf, &receiver)){
        vec_map::insert(&mut treasury.imgListOf, receiver, img);
    }
}

/// remove imglist nft with ADMIN
public entry fun remove_imglist(
    receiver: address,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    // check whitelist && add whitelist
    let account = tx_context::sender(ctx);
    // check the admin
    assert!(ADMIN == account, 0);
    // Initialize user mappings if not already present
    if(vec_map::contains(&treasury.imgListOf, &receiver)){
        vec_map::remove(&mut treasury.imgListOf, &receiver);
    }
}

/// remove whitelist nft with ADMIN
public entry fun remove_whitelist(
    receiver: address,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    // check whitelist && add whitelist
    let account = tx_context::sender(ctx);
    // check the admin
    assert!(ADMIN == account, 0);
    // Initialize user mappings if not already present
    if(vec_map::contains(&treasury.whitelistOf, &receiver)){
        vec_map::remove(&mut treasury.whitelistOf, &receiver);
    }
}


/// Create a new nft with whitelist
public entry fun whitelist_mint(image_blob_id : String, description : String, treasury: &mut Treasury, ctx: &mut TxContext) {
    
    let maxSupply = treasury.whitelistMintTotal + treasury.publicMintTotal;
    assert!(maxSupply <= treasury.totalSupply, 3);

    let account = tx_context::sender(ctx);
    // check whitelist
    if(vec_map::contains(&treasury.whitelistOf, &account)){

        let balanceOf_account = vec_map::get_mut(&mut treasury.whitelistOf, &account);
        let amount = *balanceOf_account;

        if(amount == 1){

            treasury.supply = treasury.supply + 1;
            let number_id = treasury.supply;
            
            let nft = new( number_id, description, ctx);
            transfer::transfer(nft, tx_context::sender(ctx));

            treasury.whitelistMintTotal = treasury.whitelistMintTotal + 1;

            *balanceOf_account = 2;

            event::emit(WhitelistMint{user:tx_context::sender(ctx)});
        };
    };
}


/// Create a new 0x nft with public
public entry fun public_mint(image_blob_id : String, description : String, payment: Coin<SUI>, treasury: &mut Treasury, ctx: &mut TxContext) {
    let amount = coin::value(&payment);
    
    assert!(amount >= treasury.fee, 2);

    let maxSupply = treasury.whitelistMintTotal + treasury.publicMintTotal;
    assert!(maxSupply <= treasury.totalSupply, 3);

    // Transfer payment to treasury
    let balance = coin::into_balance(payment);
    balance::join(&mut treasury.suiCoinsTreasury, balance);

    let account = tx_context::sender(ctx);

    treasury.supply = treasury.supply + 1;
    let number_id = treasury.supply;

    let nft = new( number_id, description, ctx);


    transfer::transfer(nft, tx_context::sender(ctx));
    treasury.publicMintTotal = treasury.publicMintTotal + 1;

    event::emit(PublicMint{user:tx_context::sender(ctx), price: amount});

}

/// Update the mint fee with ADMIN
public entry fun admin_update_price(treasury: &mut Treasury, price: u64, ctx: &mut TxContext) {
    
    let account = tx_context::sender(ctx);

    // check the admin
    assert!(ADMIN == account, 0);
    
    treasury.fee = price;

    event::emit(AdminUpdateFee{user:tx_context::sender(ctx), amount: price});
}


public entry fun admin_update_totalsupply(treasury: &mut Treasury, supply:u64, ctx: &mut TxContext) {
    
    let account = tx_context::sender(ctx);

    // check the admin
    assert!(ADMIN == account, 0);
    
    treasury.totalSupply = supply;

    event::emit(AdminUpdateSupply{user:tx_context::sender(ctx), amount: supply});
}


public entry fun admin_withdraw(treasury: &mut Treasury, ctx: &mut TxContext) {
    
    let account = tx_context::sender(ctx);
    let totalSuiSupply = balance::value(&treasury.suiCoinsTreasury);

    // check the admin
    assert!(ADMIN == account, 0);
    
    // Transfer the total SUI to the admin wallet
    let withdrawalAmount = coin::take<SUI>(&mut treasury.suiCoinsTreasury, totalSuiSupply, ctx);
    transfer::public_transfer(withdrawalAmount, tx_context::sender(ctx));

    event::emit(AdminSuiWithdrawn{user:tx_context::sender(ctx), amount: totalSuiSupply});
}

// fun num_to_ascii(mut num: u64): vector<u8> {
//     let mut res = vector[];
//     if (num == 0) return vector[48];
//     while (num > 0) {
//         let digit = (num % 10) as u8;
//         num = num / 10;
//         res.insert(digit + 48, 0);
//     };
//     res //
// }

public fun to_b36(addr: address): String {
    let source = address::to_bytes(addr);
    let size = 2 * vector::length(&source);
    let b36copy = BASE36;
    let base = vector::length(&b36copy);
    let mut encoding = vector::tabulate!(size, |_| 0);
    let mut high = size - 1;

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