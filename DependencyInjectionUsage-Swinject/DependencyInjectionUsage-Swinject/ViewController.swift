//
//  ViewController.swift
//  DependencyInjectionUsage-Swinject
//
//  Created by Yusuf Can Bircan on 31.01.2023.
//

import UIKit
import Swinject

class ViewController: UIViewController {
    
    // Swinject
    let container: Container = {
        let container = Container()
        container.register(BackgroundProvidingClass.self) { resolver in
            return BackgroundProvidingClass()
        }
        
        container.register(AnotherViewController.self) { resolver in
            let vc = AnotherViewController(providerProtocol: resolver.resolve(BackgroundProvidingClass.self))
            return vc
        }
        
        return container
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func button(_ sender: Any) {
        if let viewController = container.resolve(AnotherViewController.self) {
            present(viewController, animated: true)
        }
    }
}

