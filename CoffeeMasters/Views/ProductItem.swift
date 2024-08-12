//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by Zain Nadeem on 8/11/24.
//

import SwiftUI

struct ProductItem: View {
    
    var product: Product
    
    var body: some View {
           VStack{
               AsyncImage(url: product.imageURL)
                   .frame(width: 300, height: 150)
                   .background(.white)
               HStack {
                   VStack(alignment: .leading) {
                       Text(product.name)
                           .font(.title3)
                           .bold()
                       Text("$\(product.price, specifier: "%.2f")")
                           .font(.caption)

                   }.padding(8)
                   Spacer()
               }
           }
           .background(.white)
           .cornerRadius(10)
           .padding(.trailing)
           .padding(.leading)
       }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(product: Product(id: 1, name: "Dummy Product", description: "", price: 1.25))
    }
}
