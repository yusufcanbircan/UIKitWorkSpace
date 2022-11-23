//
//  ContactsDao.swift
//  sqliteUsage
//
//  Created by Yusuf Can Bircan on 23.11.2022.
//

import Foundation

class ContactsDao {
    var db: FMDatabase?
    
    init() {
        let destinationPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let databaseURL = URL(fileURLWithPath: destinationPath).appendingPathExtension("contactsFirst.sqlite")
        
        db = FMDatabase(path: databaseURL.path)
    }
    
    func addContact(person_id:Int, person_name:String, person_age:Int) {
        
        db?.open()
        
        do {
            
            try db!.executeUpdate("INSERT INTO Person VALUES (?, ?, ?)", values: [person_name, person_id, person_age])
            
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func deleteContact(person_id:Int) {
        
        db?.open()
        
        do {
            
            try db!.executeUpdate("DELETE FROM Person WHERE person_id = ?", values: [person_id])
            
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func updateContact(person_id: Int, person_name: String, person_age: Int) {
        
        db?.open()
        
        do {
            
            try db!.executeUpdate("UPDATE Person SET person_name = ?, person_old = ? WHERE person_id = ?", values: [person_name, person_age, person_id])
            
        } catch {
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func fetchAllContacts() -> [Contacts] {
        
        var contactList = [Contacts]()
        
        db?.open()
        
        do {
            
            let rs = try db!.executeQuery("SELECT * FROM Person", values: nil)
            
            while rs.next() {
                let person = Contacts(person_name: rs.string(forColumn: "person_name")!,
                                      person_id: Int(rs.string(forColumn: "person_id"))!,
                                      person_age: Int(rs.string(forColumn: "person_old"))!)
                
                contactList.append(person)
            }
            
        } catch {
            print(error.localizedDescription)
        }
        db?.close()
        
        return contactList
    }
        
}
