//
//  ViewController.swift
//  tabBarUsage
//
//  Created by Yusuf Can Bircan on 14.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let tabBarOne = tabItems[0]
            
            tabBarOne.badgeColor = .red
            tabBarOne.badgeValue = "5"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = .systemTeal
        
        changeTabBarItemColor(itemAppearance: appearance.compactInlineLayoutAppearance)
        changeTabBarItemColor(itemAppearance: appearance.inlineLayoutAppearance)
        changeTabBarItemColor(itemAppearance: appearance.stackedLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
    }
    
    func changeTabBarItemColor(itemAppearance: UITabBarItemAppearance) {
        // selected
        itemAppearance.selected.iconColor = .systemBrown
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemBrown]

        //non-selected
        itemAppearance.normal.iconColor = .white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
    }


}

