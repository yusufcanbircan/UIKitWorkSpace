//
//  TableViewCell.swift
//  customCellTableViewUsage
//
//  Created by Yusuf Can Bircan on 2.10.2022.
//

import UIKit

protocol TableViewCellProtocol {
    func cellButtonTapped(indexPath: IndexPath)
}

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var cellProtocol: TableViewCellProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func cellDeleteButton(_ sender: Any) {
        cellProtocol?.cellButtonTapped(indexPath: indexPath!)
    }
    
    

}
