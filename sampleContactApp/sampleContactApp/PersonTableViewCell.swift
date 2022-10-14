//
//  PersonTableViewCell.swift
//  sampleContactApp
//
//  Created by Yusuf Can Bircan on 14.10.2022.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
