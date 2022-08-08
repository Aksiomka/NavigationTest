//
//  OrderConfirmationAssembly.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 23.07.2022.
//

import Foundation

final class OrderConfirmationAssembly {
    func build() -> OrderConfirmationView {
        let router = Router.shared
        let viewModel = OrderConfirmationViewModel(router: router)
        return OrderConfirmationView(viewModel: viewModel)
    }
}
