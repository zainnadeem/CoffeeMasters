//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Zain Nadeem on 8/11/24.
//

import SwiftUI

struct OrderItem: View {
    @EnvironmentObject var cartManager: CartManager
    
    var item: (Product, Int)
    
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            
            Spacer()
            Text("\(Double(item.1)*item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.title)
                .foregroundColor(Color("Secondary"))
                .padding()
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
            
            
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (Product(id: 3, name: "Dummy", description: "", price: 2.00, image: ""), 2))
    }
}
