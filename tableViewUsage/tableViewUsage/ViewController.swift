//
//  ViewController.swift
//  tableViewUsage
//
//  Created by Yusuf Can Bircan on 2.10.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var countries: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Turkiye", "Urdun", "Palestine", "Germany", "Usa", "England", "Syria", "Katar", "Ukraine"]
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        cell.textLabel?.text = countries[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(countries[indexPath.row])")
    }
    
    // trailing usage
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "delete", handler: {(contextualAction, view, boolValue) in
            print("\(self.countries[indexPath.row]) deleted")
        })
        
        let editAction = UIContextualAction(style: .normal, title: "edit", handler: {(contextualAction, view, boolValue) in
            print("\(self.countries[indexPath.row]) edited")
        })
        
        return UISwipeActionsConfiguration(actions: [deleteAction, editAction])
        
    }



}

