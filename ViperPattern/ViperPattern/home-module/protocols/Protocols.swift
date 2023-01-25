//
//  Protocols.swift
//  ViperPattern
//
//  Created by Yusuf Can Bircan on 25.01.2023.
//

import Foundation

// ana protocoller

protocol ViewToPresenterProtocol {
    var interactor: PresenterToInteractorProtocol? { get set }
    var view: PresenterToViewProtocol? { get set }
    
    func toplamaYap(sayi1: String, sayi2: String)
    func carpmaYap(sayi1: String, sayi2: String)
}

protocol PresenterToInteractorProtocol {
    var presenter: InteractorToPresenterProtocol? { get set }
    
    func topla(sayi1: String, sayi2: String)
    func carp(sayi1: String, sayi2: String)
    
}


// tasiyici protocoller

protocol InteractorToPresenterProtocol {
    func presenteraVeriGonder(sonuc: String)
}

protocol PresenterToViewProtocol {
    func viewaVeriGonder(sonuc: String)
}


// Router

protocol PresenterToRouterProtocol {
    static func createModule(ref: ViewController)
}


