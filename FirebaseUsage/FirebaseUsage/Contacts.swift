//
//  Contacts.swift
//  FirebaseUsage
//
//  Created by Yusuf Can Bircan on 22.01.2023.
//

import Foundation

class Contacts {
    var person_name: String?
    var person_age: Int?
    
    init() {
        
    }
    
    init(person_name: String, person_age: Int) {
        self.person_name = person_name
        self.person_age = person_age
    }
}
