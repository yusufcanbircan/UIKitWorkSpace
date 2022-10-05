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
        
        showFlowLayout()
        
        countries = ["Turkiye", "Syria", "Usa", "Germany", "England", "Palestine", "Urdun", "Dubai"]
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
    
    func showFlowLayout(){
        let flowLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        let screenWidth = self.collectionView.frame.width
        
        flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        flowLayout.itemSize = CGSize(width: (screenWidth-30)/3, height: (screenWidth-30)/3)
        
        flowLayout.minimumInteritemSpacing = 5
        flowLayout.minimumLineSpacing = 5
        
        collectionView.collectionViewLayout = flowLayout
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
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(countries[indexPath.row]) tapped!")
    }
}
