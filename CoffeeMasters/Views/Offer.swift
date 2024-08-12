//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Zain Nadeem on 8/11/24.
//

import SwiftUI

struct Offer: View {
    
    var title = ""
    var description = ""
    
    var body: some View {
        ZStack {
            Image("Background Pattern")
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipped()
            VStack {
                Text(title)
                    .padding(.top)
                    .font(.title)
                    .background(Color("CardBackground"))
                
                Text(description)
                    .padding()
                    .background(Color("CardBackground"))
            }
        }

    }
}
//Previews are also swift structures, they conform to PreviewProvider, they will not be compiled with the coded
struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Offer(title: "my offer", description: "This is a description")
        }
        Offer(title: "my offer", description: "This is a description")
    }
}

