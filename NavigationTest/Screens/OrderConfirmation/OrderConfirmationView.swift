//
//  OrderConfirmationView.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 16.07.2022.
//

import SwiftUI

struct OrderConfirmationView: View {
    @ObservedObject var viewModel: OrderConfirmationViewModel
    
    var body: some View {
        VStack {
            Text("Confirm your order")
            Spacer()
            Button("Confirm") {
                viewModel.returnToCart()
            }
        }
    }
}

struct OrderConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        OrderConfirmationAssembly().build()
    }
}
