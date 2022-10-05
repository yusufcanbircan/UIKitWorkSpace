//
//  ViewController.swift
//  sampleCollectionViewWithDetails
//
//  Created by Yusuf Can Bircan on 5.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var movies:[Movies] = [Movies]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addMovies()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let flowLayout = UICollectionViewFlowLayout()
        
        let screenWidth = self.collectionView.layer.frame.width
        
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 10
        
        flowLayout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        let cellWidth = (screenWidth-30)/2
        
        flowLayout.itemSize = CGSize(width: cellWidth, height: cellWidth*1.80)
        
        collectionView.collectionViewLayout = flowLayout
        
    }
    
    func addMovies() {
        movies.append(Movies(name: "Anadolu'da", price: 3.99, id: "birzamanlaranadoluda"))
        movies.append(Movies(name: "Django", price: 4.99, id: "django"))
        movies.append(Movies(name: "Inception", price: 2.99, id: "inception"))
        movies.append(Movies(name: "Interstellar", price: 2.50, id: "interstellar"))
        movies.append(Movies(name: "The Hateful Eight", price: 3.00, id: "thehatefuleight"))
        movies.append(Movies(name: "The Pianist", price: 5, id: "thepianist"))
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, MoviewCollectionViewCellProtocol {
    func chartButtonTapped(indexPath: IndexPath) {
        print("\(movies[indexPath.row].name!) selected! ")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let providedMovie = movies[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MoviesCollectionViewCell
        
        cell.moviesImageView.image = UIImage(named: providedMovie.id!)
        cell.moviesNameLabel.text = providedMovie.name!
        cell.moviesPriceLabel.text = "\(providedMovie.price!) TL"
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
}
