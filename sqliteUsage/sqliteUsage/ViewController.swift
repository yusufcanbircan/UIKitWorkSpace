//
//  ViewController.swift
//  sqliteUsage
//
//  Created by Yusuf Can Bircan on 20.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        copyDatabase()
        
        //// Add Contact
        //ContactsDao().addContact(person_id: 10, person_name: "Yusufcan", person_age: 24)
        
        
        //// Delete Contact
        //ContactsDao().deleteContact(person_id: 10)
        
        
        //// Update Contact
        //ContactsDao().updateContact(person_id: 9, person_name: "Musabb", person_age: 23)
        
        
        //// Contact Control
        //let result = ContactsDao().contactControl(person_name: "Yusuf")
        //print("There are \(result) yusuf in database!")
        
        
        //// Search in Contacts
        let receivedList = ContactsDao().searchContact(person_name: "e")
        
        
        //// Fetch All Contacts
        //let receivedList = ContactsDao().fetchAllContacts()
        
        
        //// Print Contact List
        for contact in receivedList {
            print("Person Id: \(contact.person_id!) - Person Name: \(contact.person_name!) - Person Age: \(contact.person_age!)")
        }
        
    }
    
    func copyDatabase() {
        let bundlePath = Bundle.main.path(forResource: "contactsFirst", ofType: ".sqlite")
        
        let destinationPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        let fileManager = FileManager.default
        
        let copyDestination = URL(fileURLWithPath: destinationPath).appendingPathExtension("contactsFirst.sqlite")
        
        if fileManager.fileExists(atPath: copyDestination.path) {
            print("file exist")
        } else {
            do {
                try fileManager.copyItem(atPath: bundlePath!, toPath: copyDestination.path)
            } catch {
                print(error)
            }
        }
    }
}
