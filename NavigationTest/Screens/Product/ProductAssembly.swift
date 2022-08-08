//
//  ProductAssembly.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 23.07.2022.
//

import Foundation

final class ProductAssembly {
    func build(for product: Product) -> ProductView {
        let router = Router.shared
        let viewModel = ProductViewModel(product: product, router: router)
        return ProductView(viewModel: viewModel)
    }
}
