//
//  ViewController.swift
//  sampleContactApp
//
//  Created by Yusuf Can Bircan on 13.10.2022.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as! AppDelegate

class ViewController: UIViewController {
    
    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var personTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var contact:[Contact] = [Contact]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        personTableView.delegate = self
        personTableView.dataSource = self
        
        searchBar.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        showContacts()
        personTableView.reloadData()
    }
    
    func showContacts() {
        
        let fetchRequest: NSFetchRequest<Contact> = Contact.fetchRequest()
        
        let sort = NSSortDescriptor(key: #keyPath(Contact.person_name), ascending: true)
        fetchRequest.sortDescriptors = [sort]
        
        do {
            contact = try context.fetch(fetchRequest)
        } catch {
            print("Fetching Error!")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let index = sender as? Int
        
        if segue.identifier == "toDetails" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.person = contact[index!]
        }
        
        if segue.identifier == "toUpdate" {
            let destinationVC = segue.destination as! UpdateViewController
            destinationVC.person = contact[index!]
        }
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsTableView", for: indexPath) as! PersonTableViewCell
        
        cell.nameLabel.text = contact[indexPath.row].person_name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetails", sender: indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "delete", handler: {(contextualAction, view, boolValue) in
            
            let person = self.contact[indexPath.row]
            
            self.context.delete(person)
            
            appDelegate.saveContext()
            
            self.showContacts()
            self.personTableView.reloadData()
            
        })
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let editAction = UIContextualAction(style: .normal, title: "edit", handler: {(contextualAction, view, boolValue) in
            self.performSegue(withIdentifier: "toUpdate", sender: indexPath.row)
        })
        
        return UISwipeActionsConfiguration(actions: [editAction])
    }
    
    
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("\(searchText)")
    }
}

