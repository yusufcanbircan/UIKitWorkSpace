//
//  ViewController.swift
//  customCellTableViewUsage
//
//  Created by Yusuf Can Bircan on 2.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var person = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        person.append(Person(name: "yusuf", id: 1, telNo: 111111))
        person.append(Person(name: "cansu", id: 2, telNo: 222222))
        person.append(Person(name: "ronak", id: 3, telNo: 333333))
        person.append(Person(name: "dogan", id: 4, telNo: 444444))
        person.append(Person(name: "zeynep", id: 5, telNo: 555555))
        person.append(Person(name: "ozge", id: 6, telNo: 666666))
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource, TableViewCellProtocol{
    func cellButtonTapped(indexPath: IndexPath) {
        print("deleted \(person[indexPath.row].name!)")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let providedPerson = person[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! TableViewCell
        
        cell.nameLabel.text = providedPerson.name
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(person[indexPath.row].name!) -- \(person[indexPath.row].telNo!)")
    }
}
