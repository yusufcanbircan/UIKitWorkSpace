//
//  Router.swift
//  ViperPattern
//
//  Created by Yusuf Can Bircan on 25.01.2023.
//

import Foundation

class Router: PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        
        let presenter = Presenter()
        
        // view
        ref.presenterr = presenter
        
        // Presenter
        ref.presenterr?.interactor = Interactor()
        ref.presenterr?.view = ref
        
        // Interactor
        ref.presenterr?.interactor?.presenter = presenter
    }
}
