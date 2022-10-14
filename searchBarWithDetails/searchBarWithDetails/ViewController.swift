//
//  ViewController.swift
//  searchBarWithDetails
//
//  Created by Yusuf Can Bircan on 8.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var countries:[String] = [String]()
    var searcingCountries:[String] = [String]()
    
    var isSearcing:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countries = ["Ankara", "Aksaray", "Adana", "Istanbul", "Izmir", "Bursa", "Gaziantep", "KahramanMaras", "Edirne", "Samsun", "Trabzon", "Ordu", "Konya", "Kırsehir", "Kayseri", "Van", "Diyarbakir"]
        
        countries = countries.sorted()
        
        searchBar.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == "" {
            isSearcing = false
        } else {
            isSearcing = true
            searcingCountries = countries.filter{ $0.lowercased().contains(searchText.lowercased()) }
        }
        
        tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isSearcing {
            return searcingCountries.count
        } else {
            return countries.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)
        
        if isSearcing {
            cell.textLabel?.text = searcingCountries[indexPath.row]
        } else {
            cell.textLabel?.text = countries[indexPath.row]
        }
        
        return cell
    }
}
