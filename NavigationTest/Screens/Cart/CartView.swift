//
//  CartView.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 16.07.2022.
//

import SwiftUI

struct CartView: View {
    @ObservedObject var viewModel: CartViewModel
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.products, id: \.self) { product in
                    ProductRow(product: product)
                        .onTapGesture {
                            viewModel.showProduct(product: product)
                        }
                }
            }
            
            Button("Buy") {
                viewModel.buy()
            }
        }
        .navigationTitle("Cart")
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartAssembly().build()
    }
}
