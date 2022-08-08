//
//  AddressViewModel.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 17.07.2022.
//

import Foundation

final class AddressViewModel: ObservableObject {
    private let router: Router
    
    init(router: Router) {
        self.router = router
    }
    
    func onConfirmTap() {
        router.showOrderConfirmation()
    }
}
