//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Zain Nadeem on 8/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Offer(title: "New Offer", description: "Hows it going")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewDevice("iPhone SE (3rd generation)")
        }
    }
}
