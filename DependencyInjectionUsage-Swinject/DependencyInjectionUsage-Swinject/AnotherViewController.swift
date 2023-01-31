//
//  AnotherViewController.swift
//  DependencyInjectionUsage-Swinject
//
//  Created by Yusuf Can Bircan on 31.01.2023.
//

import UIKit

class AnotherViewController: UIViewController {
    
    private var providerProtocol: BackgroundProviderProtocol?

    init(providerProtocol: BackgroundProviderProtocol?) {
        super.init(nibName: nil, bundle: nil)
        self.providerProtocol = providerProtocol
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = providerProtocol?.backgroundColor ?? .white
        
    }

}
