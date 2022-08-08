//
//  Router.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 23.07.2022.
//

import SwiftUI

final class Router: ObservableObject {
    static let shared = Router()
    
    @Published var path = [Route]()
    
    func showProduct(product: Product) {
        path.append(.product(product))
    }
    
    func showAddress() {
        path.append(.address)
    }
    
    func showOrderConfirmation() {
        path.append(.orderConfirmation)
    }
    
    func backToRoot() {
        path.removeAll()
    }
    
    func back() {
        path.removeLast()
    }
}
