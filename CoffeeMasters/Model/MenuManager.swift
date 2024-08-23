//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Zain Nadeem on 8/11/24.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
    @Published var menu: [Category] = []
    
    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork() {
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
            .responseDecodable(of: [Category].self) { response in
                if let menuFromNetwork = response.value {
                    print(response.value)
                    self.menu = menuFromNetwork
                }
            }
    }
}



