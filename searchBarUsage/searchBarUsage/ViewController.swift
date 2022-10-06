//
//  ViewController.swift
//  searchBarUsage
//
//  Created by Yusuf Can Bircan on 6.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        
        searchBar.scopeButtonTitles = ["First", "Second"]
    }


}

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("cancel button clicked.")
    }
    
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        if selectedScope == 0 {
            print("first scope tapped.")
        }
        
        if selectedScope == 1 {
            print("second scope tapped.")
        }
    }
}
