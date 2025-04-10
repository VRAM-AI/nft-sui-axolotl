# The Axolotl Standard
## A Framework for Evolving NFTs on Sui Blockchain

![Axolotl Standard Logo](https://vram-ai-1.gitbook.io/~gitbook/image?url=https%3A%2F%2F3554700060-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FFZB5GX3shBF8Txs9hyjC%252Fuploads%252Fgit-blob-67945ed4c82c98740c270f0884038d7d4ceb5479%252Faxolotle-realistic-vram-color.jpeg%3Falt%3Dmedia&width=768&dpr=4&quality=100&sign=47065718&sv=2)

> *"Like the regenerative axolotl salamander, these NFTs transform while maintaining their core identity."*

---

## Table of Contents

- [Introduction](#introduction)
- [Technical Implementation](#technical-implementation)
  - [State Management](#state-management)
  - [Evolution Mechanisms](#evolution-mechanisms)
  - [Storage Architecture](#storage-architecture)
- [Code Examples](#code-examples)
  - [Basic Implementation](#basic-implementation)
  - [Reveal Function](#reveal-function)
  - [Attribute Updates](#attribute-updates)
  - [Marketplace Integration](#marketplace-integration)
- [Getting Started](#getting-started)
- [Use Cases](#use-cases)

---

## Introduction

The Axolotl Standard establishes a framework for NFTs that can transform and evolve over time while maintaining complete on-chain permanence. Built on Sui's object-centric model, this standard enables:

- ✨ Dynamic evolution of NFT imagery and metadata
- 🔄 Multiple evolution stages with different triggers
- 📜 Complete preservation of evolution history
- 🔗 Full compatibility with marketplace standards

---

## Technical Implementation

### State Management

The core of the Axolotl Standard is the Treasury structure that manages evolution states:

```rust
public struct Treasury has key {
    id: UID,
    // Track current image mapping for each address
    imgListOf: VecMap<address, String>,  
    // Track attribute keys for each address
    attrKeysListOf: VecMap<address, vector<String>>,  
    // Track attribute values for each address
    attrValuesListOf: VecMap<address, vector<String>>,  
    // Historical record of all images by ID
    imgHistoryOf: VecMap<u64, String>,
}
```

This structure maintains mappings between wallet addresses and their assets' current states, enabling controlled evolution of NFTs.

### Evolution Mechanisms

The standard supports multiple evolution patterns:

1. **Reveal-based Evolution**: Assets begin with a placeholder and evolve through reveals
2. **Attribute-based Evolution**: NFTs evolve through metadata updates
3. **Multi-stage Evolution**: Progressive changes through predefined stages
4. **Autonomous Evolution**: Self-evolving NFTs based on time or ecosystem events

### Storage Architecture

Axolotl NFTs utilize a hybrid storage approach:

- **On-chain data**: All metadata, ownership records, and evolution history
- **Decentralized blob storage**: Actual NFT image assets on Walrus
- **Hash verification**: Image integrity through on-chain verification

This architecture ensures efficiency, permanence, and censorship resistance.

---

## Code Examples

### Basic Implementation

Here's how to create a basic Axolotl-compatible NFT:

```rust
/// Create a new Axolotl-standard NFT
public fun mint_nft(
    name: String,
    description: String,
    url: String,
    attributes: VecMap<String, String>,
    ctx: &mut TxContext
): NFT {
    let nft = NFT {
        id: object::new(ctx),
        name,
        description,
        url,
        attributes,
        evolution_stage: 0, // Initial stage
    };
    
    // Register with Treasury for evolution tracking
    register_nft(&nft, ctx);
    
    nft
}

/// Register the NFT with the Treasury
fun register_nft(nft: &NFT, ctx: &mut TxContext) {
    let treasury = get_treasury();
    let sender = tx_context::sender(ctx);
    
    // Set initial image in the Treasury
    vec_map::insert(&mut treasury.imgListOf, sender, nft.url);
    
    // Initialize attributes tracking
    let keys = vec_map::keys(&nft.attributes);
    let values = vec_map::values(&nft.attributes);
    vec_map::insert(&mut treasury.attrKeysListOf, sender, keys);
    vec_map::insert(&mut treasury.attrValuesListOf, sender, values);
}
```

### Reveal Function

Implement the reveal mechanism to evolve your NFT:

```rust
/// Update an NFT's image during reveal
public entry fun reveal_update_nft(
    name: String,
    description: String,
    ownerKiosk: &mut Kiosk,
    ownerKioskCap: &KioskOwnerCap,
    nftObjectId: ID,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    
    // Check if there's an image update for this account
    if (vec_map::contains(&treasury.imgListOf, &account)) {
        // Apply the updated image hash
        let nft = kiosk::borrow_mut(ownerKiosk, ownerKioskCap, nftObjectId);
        nft.url = get_image_for_account(treasury, account);
        nft.evolution_stage += 1;
        
        // Record in history
        vec_map::insert(
            &mut treasury.imgHistoryOf, 
            object::id_to_inner(&nft.id), 
            nft.url
        );
    }
}

/// Helper to get the image for an account
fun get_image_for_account(treasury: &Treasury, account: address): String {
    *vec_map::get(&treasury.imgListOf, &account)
}
```

### Attribute Updates

Enable attribute-based evolution for your NFTs:

```rust
/// Update attributes during evolution
public entry fun update_attributes(
    ownerKiosk: &mut Kiosk,
    ownerKioskCap: &KioskOwnerCap,
    nftObjectId: ID,
    treasury: &mut Treasury,
    ctx: &mut TxContext
) {
    let account = tx_context::sender(ctx);
    
    // Check if there are attribute updates for this account
    if (vec_map::contains(&treasury.attrKeysListOf, &account) && 
        vec_map::contains(&treasury.attrValuesListOf, &account)) {
        
        // Get the new attributes for this account
        let keys = get_keys_for_account(treasury, account);
        let values = get_values_for_account(treasury, account);
        
        // Update the NFT's attributes
        let nft = kiosk::borrow_mut(ownerKiosk, ownerKioskCap, nftObjectId);
        nft.attributes = vec_map::from_keys_values(keys, values);
        nft.evolution_stage += 1;
    }
}

/// Helper to get attribute keys
fun get_keys_for_account(treasury: &Treasury, account: address): vector<String> {
    *vec_map::get(&treasury.attrKeysListOf, &account)
}

/// Helper to get attribute values
fun get_values_for_account(treasury: &Treasury, account: address): vector<String> {
    *vec_map::get(&treasury.attrValuesListOf, &account)
}
```

### Marketplace Integration

Integrate your evolving NFTs with Sui's Kiosk marketplace system:

```rust
/// Create kiosk and list an NFT
public entry fun list_on_marketplace(
    nft: NFT,
    price: u64,
    ctx: &mut TxContext
) {
    // Create a new kiosk
    let (kiosk, cap) = kiosk::new(ctx);
    
    // Create transfer policy with royalty
    let (policy, policyCap) = transfer_policy::new<NFT>(ctx);
    royalty_rule::add<NFT>(&mut policy, &policyCap, 500, 0); // 5% royalty
    
    // Place NFT in kiosk
    kiosk::place(&mut kiosk, &cap, nft);
    
    // List the NFT
    kiosk::list<NFT>(&mut kiosk, &cap, object::id(&nft), price);
    
    // Transfer ownership
    transfer::public_transfer(cap, tx_context::sender(ctx));
    transfer::public_share_object(kiosk);
    transfer::public_share_object(policy);
    transfer::public_transfer(policyCap, tx_context::sender(ctx));
}
```

---

## Getting Started

To implement the Axolotl Standard in your Sui NFT project:

1. **Set up your project**
   ```bash
   sui move new my-evolving-nft
   cd my-evolving-nft
   ```

2. **Import the Axolotl Standard**
   ```rust
   // In your Move.toml
   [dependencies]
   Sui = { git = "https://github.com/MystenLabs/sui.git", subdir = "crates/sui-framework/packages/sui-framework", rev = "framework/testnet" }
   AxolotlStandard = { git = "https://github.com/vram-ai/axolotl-standard.git", rev = "main" }
   ```

3. **Initialize the Treasury**
   ```rust
   module my_evolving_nft::collection {
       use sui::object::{Self, UID};
       use sui::tx_context::{Self, TxContext};
       use axolotl_standard::treasury::{Self, Treasury};
       
       fun init(ctx: &mut TxContext) {
           // Create and share the Treasury object
           treasury::create_and_share(ctx);
       }
   }
   ```

4. **Implement the NFT module using the provided code examples**

5. **Build and deploy**
   ```bash
   sui move build
   sui client publish --gas-budget 10000000
   ```

---

## Use Cases

The Axolotl Standard enables numerous creative applications:

- **Story-Driven NFTs**: Characters that visually evolve as their storyline progresses
- **Achievement-Based Evolution**: NFTs that transform based on owner accomplishments
- **Community-Driven Development**: Assets that evolve based on collective governance
- **Ecosystem-Reflective Collectibles**: NFTs that represent protocol milestones
- **Dynamic Game Assets**: In-game items that gain new capabilities through use

---

## Resources

- [GitHub Repository](https://github.com/vram-ai/axolotl-standard)
- [Sui Framework Documentation](https://docs.sui.io/)
- [Walrus Blob Storage Docs](https://docs.sui.io/build/walrus)
- [Sample Projects](https://github.com/vram-ai/axolotl-examples)

---

*Developed by VRAM.AI - Building evolving experiences on Sui*
