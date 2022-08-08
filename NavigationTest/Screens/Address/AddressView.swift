//
//  AddressView.swift
//  NavigationTest
//
//  Created by Svetlana Gladysheva on 17.07.2022.
//

import SwiftUI

struct AddressView: View {
    @ObservedObject var viewModel: AddressViewModel
    
    var body: some View {
        VStack {
            Text("Choose address")
            Spacer()
            Text("123 Main Street, New York, NY 10030")
            Spacer()
            Button("Confirm") {
                viewModel.onConfirmTap()
            }
        }
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressAssembly().build()
    }
}
