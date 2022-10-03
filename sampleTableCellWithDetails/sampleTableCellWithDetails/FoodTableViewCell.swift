//
//  FoodTableViewCell.swift
//  sampleTableCellWithDetails
//
//  Created by Yusuf Can Bircan on 3.10.2022.
//

import UIKit

protocol FoodTableViewCellProtocol {
    func cellOrderButtonTapped(indexPath: IndexPath)
}

class FoodTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    
    var cellProtocol: FoodTableViewCellProtocol?
    var indexPath: IndexPath?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func orderButton(_ sender: Any) {
        cellProtocol?.cellOrderButtonTapped(indexPath: indexPath!)
    }
}
