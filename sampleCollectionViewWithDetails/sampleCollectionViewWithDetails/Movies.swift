//
//  Movies.swift
//  sampleCollectionViewWithDetails
//
//  Created by Yusuf Can Bircan on 5.10.2022.
//

import Foundation

class Movies {
    var name: String?
    var price: Double?
    var id: String?
    
    init(name: String? = nil, price: Double? = nil, id: String? = nil) {
        self.name = name
        self.price = price
        self.id = id
    }
    
    init() {
        
    }
}
