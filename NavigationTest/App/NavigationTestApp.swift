//
//  NavigationTestApp.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 16.07.2022.
//

import SwiftUI

@main
struct NavigationTestApp: App {
    @ObservedObject var router = Router.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                CartAssembly().build()
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .product(let product):
                            ProductAssembly().build(for: product)
                        case .address:
                            AddressAssembly().build()
                        case .orderConfirmation:
                            OrderConfirmationAssembly().build()
                        }
                    }
            }
        }
    }
}
