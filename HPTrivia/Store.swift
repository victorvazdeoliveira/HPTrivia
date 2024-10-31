//
//  Store.swift
//  HPTrivia
//
//  Created by Victor Vaz de Oliveira on 31/10/24.
//

import Foundation
import StoreKit

enum BookStatus {
    case active
    case inactive
    case locked
}

@MainActor
class Store: ObservableObject {
    @Published var books: [BookStatus] = [.active, .active, .inactive, .locked, .locked, .locked, .locked]
    @Published var products: [Product] = []
    
    private var producIDs = ["hp4", "hp5", "hp6", "hp7"]
    
    func loadProducts() async {
        do {
            products = try await Product.products(for: producIDs)
        } catch {
            print("Couldn't fetch those products: \(error)")
        }
    }
}
