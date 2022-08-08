//
//  ProductView.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 16.07.2022.
//

import SwiftUI

struct ProductView: View {
    @ObservedObject var viewModel: ProductViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.product.name)
            Text("Price: \(viewModel.product.price)$")
        }
        .navigationTitle("Product")
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductAssembly().build(for: Product(name: "Product", price: 1))
    }
}
