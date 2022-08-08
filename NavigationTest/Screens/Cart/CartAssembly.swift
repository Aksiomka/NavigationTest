//
//  CartAssembly.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 23.07.2022.
//

import Foundation

final class CartAssembly {
    func build() -> CartView {
        let router = Router.shared
        let viewModel = CartViewModel(cartManager: CartManager(), router: router)
        return CartView(viewModel: viewModel, router: router)
    }
}
