//
//  ViewController.swift
//  FirebaseUsage
//
//  Created by Yusuf Can Bircan on 22.01.2023.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    var ref: DatabaseReference?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
        
        //addPerson()
        //deletePerson()
        //updatePerson()
        
        //fetchAllData()
        //fetchEqualData()
        //fetchLimitData()
        fetchBetweenData()
    }
    
    func addPerson() {
        let person = Contacts(person_name: "Fadime", person_age: 21)
        
        let dict: [String: Any] = ["person_name": person.person_name!, "person_age": person.person_age!]
        
        ref?.child("Contacts").childByAutoId().setValue(dict)
    }
    
    func deletePerson() {
        ref?.child("Contacts").child("-NMOgVyalKN1Ls24Sq86").removeValue()
    }
    
    func updatePerson() {
        
        let dict:[String: Any] = ["person_name": "Asko", "person_age": 88]
        ref?.child("Contacts").child("-NMOgb8sCesWEiAIJ5Ur").updateChildValues(dict)
    }
    
    func fetchAllData() {
        
        ref?.child("Contacts").observe(.value, with: { DataSnapShot in
            
            if let fetchedValues = DataSnapShot.value as? [String: AnyObject] {
                
                for row in fetchedValues {
                    
                    if let rowDict = row.value as? NSDictionary {
                        
                        let key = row.key
                        let person_name = rowDict["person_name"] as? String ?? ""
                        let person_age = rowDict["person_age"] as? Int ?? 0
                        
                        print("Person Key: \(key)")
                        print("Person Name: \(person_name)")
                        print("Person Age: \(person_age) \n")
                    }
                }
            }
        })
        
    }
    
    func fetchEqualData() {
        
        let request = ref?.child("Contacts").queryOrdered(byChild: "person_name").queryEqual(toValue: "Fadime")
        
        request!.observe(.value, with: { DataSnapShot in
            
            if let fetchValues = DataSnapShot.value as? [String: AnyObject] {
                
                for row in fetchValues {
                    
                    if let rowDict = row.value as? NSDictionary {
                        
                        let key = row.key
                        let person_name = rowDict["person_name"] as? String ?? ""
                        let person_age = rowDict["person_age"] as? Int ?? 0
                        
                        print("Person Key: \(key)")
                        print("Person Name: \(person_name)")
                        print("Person Age: \(person_age) \n")
                    }
                }
            }
        })
    }
    
    func fetchLimitData() {
        
        let request = ref?.child("Contacts").queryLimited(toLast: 1)
        
        request!.observe(.value, with: { DataSnapShot in
            
            if let fetchValues = DataSnapShot.value as? [String: AnyObject] {
                
                for row in fetchValues {
                    
                    if let rowDict = row.value as? NSDictionary {
                        
                        let key = row.key
                        let person_name = rowDict["person_name"] as? String ?? ""
                        let person_age = rowDict["person_age"] as? Int ?? 0
                        
                        print("Person Key: \(key)")
                        print("Person Name: \(person_name)")
                        print("Person Age: \(person_age) \n")
                    }
                }
            }
        })
    }
    
    func fetchBetweenData() {
        
        let request = ref?.child("Contacts").queryOrdered(byChild: "person_age").queryStarting(atValue: 18).queryEnding(atValue: 22)
        
        request!.observe(.value, with: { DataSnapShot in
            
            if let fetchValues = DataSnapShot.value as? [String: AnyObject] {
                
                for row in fetchValues {
                    
                    if let rowDict = row.value as? NSDictionary {
                        
                        let key = row.key
                        let person_name = rowDict["person_name"] as? String ?? ""
                        let person_age = rowDict["person_age"] as? Int ?? 0
                        
                        print("Person Key: \(key)")
                        print("Person Name: \(person_name)")
                        print("Person Age: \(person_age) \n")
                    }
                }
            }
        })
    }
}

