//
//  AddressAssembly.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 23.07.2022.
//

import Foundation

final class AddressAssembly {
    func build() -> AddressView {
        let router = Router.shared
        let viewModel = AddressViewModel(router: router)
        return AddressView(viewModel: viewModel)
    }
}
