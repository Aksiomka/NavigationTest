//
//  CartViewModel.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 16.07.2022.
//

import Foundation

final class CartViewModel: ObservableObject {
    @Published var products = [Product]()
    
    private let cartManager: CartManager
    private let router: Router
    
    init(cartManager: CartManager, router: Router) {
        self.cartManager = cartManager
        self.router = router
        
        products = cartManager.getProducts()
    }
    
    func showProduct(product: Product) {
        self.router.showProduct(product: product)
    }
    
    func buy() {
        if cartManager.isAddressFilled() {
            self.router.showOrderConfirmation()
        } else {
            self.router.showAddress()
        }
    }
}
