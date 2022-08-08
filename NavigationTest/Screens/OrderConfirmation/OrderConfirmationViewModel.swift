//
//  OrderConfirmationViewModel.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 16.07.2022.
//

import Foundation

final class OrderConfirmationViewModel: ObservableObject {
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func returnToCart() {
        router.backToRoot()
    }
}
