//
//  ProductRow.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 16.07.2022.
//

import SwiftUI

struct ProductRow : View {
    var product: Product
    
    var body: some View {
        HStack {
            Text(product.name)
            Spacer()
            Text("\(product.price)$")
        }
        .padding()
        .contentShape(Rectangle())
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: Product(name: "test", price: 100))
    }
}
