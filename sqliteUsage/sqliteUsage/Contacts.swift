//
//  Contacts.swift
//  sqliteUsage
//
//  Created by Yusuf Can Bircan on 23.11.2022.
//

import Foundation

class Contacts {
    var person_name: String?
    var person_id: Int?
    var person_age: Int?
    
    init() {
        
    }
    
    init(person_name: String, person_id: Int, person_age: Int) {
        self.person_name = person_name
        self.person_id = person_id
        self.person_age = person_age
    }
}
