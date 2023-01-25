//
//  Interactor.swift
//  ViperPattern
//
//  Created by Yusuf Can Bircan on 25.01.2023.
//

import Foundation

class Interactor: PresenterToInteractorProtocol {
    var presenter: InteractorToPresenterProtocol?
    
    func topla(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1),
           let s2 = Int(sayi2) {
            let result = s1 + s2
            presenter?.presenteraVeriGonder(sonuc: String(result))
        }
    }
    
    func carp(sayi1: String, sayi2: String) {
        if let s1 = Int(sayi1),
           let s2 = Int(sayi2) {
            let result = s1 * s2
            presenter?.presenteraVeriGonder(sonuc: String(result))
        }
    }
    
    
}
