//
//  MoviesCollectionViewCell.swift
//  sampleCollectionViewWithDetails
//
//  Created by Yusuf Can Bircan on 5.10.2022.
//

import UIKit

protocol MoviewCollectionViewCellProtocol {
    func chartButtonTapped(indexPath: IndexPath)
}

class MoviesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var moviesImageView: UIImageView!
    @IBOutlet weak var moviesNameLabel: UILabel!
    @IBOutlet weak var moviesPriceLabel: UILabel!
    
    var cellProtocol: MoviewCollectionViewCellProtocol?
    var indexPath: IndexPath?
    
    @IBAction func addToChartButton(_ sender: Any) {
        cellProtocol?.chartButtonTapped(indexPath: indexPath!)
    }
    
}
