//
//  ViewController.swift
//  coreDataUsage
//
//  Created by Yusuf Can Bircan on 13.10.2022.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    var persons = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //savePersonToCoreData(name: "Rabia", id: 6)
        //updateData(data: persons[1], newId: 3, newName: "Iremmm")
        
        //fetchSortedData()
        
        fetchFilteredData()
        showData()
        
        
    }
    
    func savePersonToCoreData(name: String, id:Int16) {
        
        let person = Person(context: context)
        
        person.person_id = id
        person.person_name = name
        
        appDelegate.saveContext()
        
    }
    
    func fetchData() {
        
        do {
            persons = try context.fetch(Person.fetchRequest())
        } catch {
            print("Fetching Error!")
        }
        
    }
    
    func fetchSortedData() {
        
        let fetchRequest: NSFetchRequest<Person> = Person.fetchRequest()
        
        let sort = NSSortDescriptor(key: #keyPath(Person.person_name), ascending: true)
        fetchRequest.sortDescriptors = [sort]
        
        
        do {
            persons = try context.fetch(fetchRequest)
        } catch {
            print("Fetching Error!")
        }
        
    }
    
    func fetchFilteredData() {
        let fetchRequest: NSFetchRequest<Person> = Person.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "person_id == %i", 2)
        
        do {
            persons = try context.fetch(fetchRequest)
        } catch {
            print("Fetching Error!")
        }
    }
    
    func showData() {
        
        for i in persons {
            print("Person Name: \(i.person_name!) -- Person Id: \(i.person_id)")
        }
        
    }
    
    func deleteData(person: Person) {
        
        self.context.delete(person)
        
        appDelegate.saveContext()
    }
    
    func updateData(data: Person, newId: Int16, newName: String) {
        data.person_id = newId
        data.person_name = newName
        
        appDelegate.saveContext()
    }
}



