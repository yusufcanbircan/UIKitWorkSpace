//
//  File.swift
//  customCellTableViewUsage
//
//  Created by Yusuf Can Bircan on 2.10.2022.
//

import Foundation

class Person {
    
    var name: String?
    var id: Int?
    var telNo: Int?
    
    init() {
        
    }
    
    init(name: String? = nil, id: Int? = nil, telNo: Int? = nil) {
        self.name = name
        self.id = id
        self.telNo = telNo
    }

}
