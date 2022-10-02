//
//  ViewController.swift
//  multipleTableViewUsage
//
//  Created by Yusuf Can Bircan on 2.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countriesTableView: UITableView!
    @IBOutlet weak var citiesTableView: UITableView!
    
    var countries:[String] = [String]()
    var cities:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Turkiye", "Germany", "Palestine", "France", "Usa", "England", "Ukraine", "Russia", "Israel", "Syria"]
        
        cities = ["London", "Aksaray", "Gaziantep", "Los Angeles", "Berlin", "Lviv", "Sam", "Paris"]
        
        countriesTableView.delegate = self
        countriesTableView.dataSource = self
        
        citiesTableView.delegate = self
        citiesTableView.dataSource = self
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var count:Int?
        
        if tableView == countriesTableView {
            count = countries.count
        }
        
        if tableView == citiesTableView {
            count = cities.count
        }
        
        return count!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell?
        
        if tableView == countriesTableView {
            cell = tableView.dequeueReusableCell(withIdentifier: "countriesCell", for: indexPath)
            
            cell?.textLabel?.text = countries[indexPath.row]
        }
        
        if tableView == citiesTableView {
            cell = tableView.dequeueReusableCell(withIdentifier: "citiesCell", for: indexPath)
            
            cell?.textLabel?.text = cities[indexPath.row]
        }
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView == countriesTableView {
            print("\(countries[indexPath.row]) selected")
        }
        
        if tableView == citiesTableView {
            print("\(cities[indexPath.row])")
        }
    }
}

