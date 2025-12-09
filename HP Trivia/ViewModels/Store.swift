//
//  Store.swift
//  HP Trivia
//
//  Created by Alex Smith on 12/8/25.
//

import StoreKit

@MainActor
@Observable

class Store {
    var products: [Product] = []
    var purchased = Set<String>()
    
    private var updates: Task<Void, Never>? = nil
    
    // load available products
    func loadProducts() async {
        do {
            products = try await Product.products(for: ["hp4", "hp5", "hp6", "hp7"])
            products.sort {
                $0.displayName < $1.displayName
            }
        } catch {
            print("Unable to load products: \(error)")
        }
    }
    // Purchase product
    
    // Check for purchased products
    
    // Watch for updates from app store
    
    
}
