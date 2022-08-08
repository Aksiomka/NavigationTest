//
//  ProductViewModel.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 16.07.2022.
//

import Foundation

final class ProductViewModel: ObservableObject {
    @Published var product: Product
    
    private let router: Router
    
    init(product: Product, router: Router) {
        self.product = product
        self.router = router
    }
}
