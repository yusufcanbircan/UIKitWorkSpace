//
//  Foods.swift
//  sampleTableCellWithDetails
//
//  Created by Yusuf Can Bircan on 3.10.2022.
//

import Foundation

class Foods {
    
    var foodName: String?
    var foodPrice: Double?
    var foodId: String?
    
    init(foodName: String? = nil, foodPrice: Double? = nil, foodId: String? = nil) {
        self.foodName = foodName
        self.foodPrice = foodPrice
        self.foodId = foodId
    }
    
    init() {
        
    }
}
