//
//  ViewControllerC.swift
//  generallyUsedSegue
//
//  Created by Yusuf Can Bircan on 12.09.2022.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var labelC: UILabel!
    
    var messageC: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelC.text = messageC!
    }
    

}
