//
//  ViewController.swift
//  collectionViewUsage
//
//  Created by Yusuf Can Bircan on 4.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var countries:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Turkiye", "Syria", "Usa", "Germany", "England", "Palestine", "Urdun", "Dubai"]
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
        
        cell.nameLabel.text = countries[indexPath.row]
        
        return cell
    }
}
