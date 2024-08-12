//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Zain Nadeem on 8/11/24.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                TextField("Search", text: $searchText)
                    .padding()
                ForEach(menuManager.menu) { category in
                    ForEach(category.products) { product in
                        NavigationLink {
                            DetailsPage(product: product)
                        } label: {
                            ProductItem(product: product)
                        }
                    }
  
                }
            }.navigationTitle("Mongo's Wholesale")
                .foregroundColor(.primary)
            
        }
    }
}

struct MenuPage_Previews: PreviewProvider {
    static var previews: some View {
        MenuPage().environmentObject(MenuManager())
    }
}
