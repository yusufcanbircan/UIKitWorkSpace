//
//  ViewController.swift
//  sampleTableCellWithDetails
//
//  Created by Yusuf Can Bircan on 3.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var foodList = [Foods]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodList.append(Foods(foodName: "Ayran", foodPrice: 3, foodId: "ayran"))
        foodList.append(Foods(foodName: "Baklava", foodPrice: 45, foodId: "baklava"))
        foodList.append(Foods(foodName: "Fanta", foodPrice: 13, foodId: "fanta"))
        foodList.append(Foods(foodName: "Izgara Somon", foodPrice: 89, foodId: "izgarasomon"))
        foodList.append(Foods(foodName: "Izgara Tavuk", foodPrice: 67, foodId: "izgaratavuk"))
        foodList.append(Foods(foodName: "Kadayıf", foodPrice: 38, foodId: "kadayif"))
        foodList.append(Foods(foodName: "Kahve", foodPrice: 29, foodId: "kahve"))
        foodList.append(Foods(foodName: "Köfte", foodPrice: 90, foodId: "kofte"))
        foodList.append(Foods(foodName: "Lazanya", foodPrice: 55, foodId: "lazanya"))
        foodList.append(Foods(foodName: "Makarna", foodPrice: 43, foodId: "makarna"))
        foodList.append(Foods(foodName: "Pizza", foodPrice: 90, foodId: "pizza"))
        foodList.append(Foods(foodName: "Su", foodPrice: 3, foodId: "su"))
        foodList.append(Foods(foodName: "Sütlaç", foodPrice: 35, foodId: "sutlac"))
        foodList.append(Foods(foodName: "Tiramisu", foodPrice: 25, foodId: "tiramisu"))
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource, FoodTableViewCellProtocol {
    
    func cellOrderButtonTapped(indexPath: IndexPath) {
        print("ordered \(foodList[indexPath.row].foodName!)")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let providedFood = foodList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath) as! FoodTableViewCell
        
        cell.nameLabel.text = providedFood.foodName!
        cell.cellImageView.image = UIImage(named: providedFood.foodId!)
        cell.priceLabel.text = "\(providedFood.foodPrice!)"
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }

}
