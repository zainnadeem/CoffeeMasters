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
        VStack {
            Text(title)
                .padding(.top)
                .font(.title)
                
            Text(description)
                .padding()
        }
    }
}

struct Offer_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Offer(title: "my offer", description: "This is a description")
                .previewLayout(.fixed(width: 300.0, height: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/))
            
                .preferredColorScheme(.dark)
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
            
        }

}
