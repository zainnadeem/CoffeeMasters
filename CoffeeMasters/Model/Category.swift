//
//  Category.swift
//  CoffeeMasters
//
//  Created by Zain Nadeem on 8/11/24.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return self.name
    }
    
    
}

