//
//  ViewController.swift
//  ViperPattern
//
//  Created by Yusuf Can Bircan on 25.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var num1TextField: UITextField!
    @IBOutlet var num2TextField: UITextField!
    
    var presenterr: ViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "0"
        Router.createModule(ref: self)
    }
    
    @IBAction func toplaButton(_ sender: Any) {
        if let sayi1 = num1TextField.text,
           let sayi2 = num2TextField.text {
            presenterr?.toplamaYap(sayi1: sayi1, sayi2: sayi2)
        }
    }
    
    @IBAction func carpButton(_ sender: Any) {
        if let sayi1 = num1TextField.text,
           let sayi2 = num2TextField.text {
            presenterr?.carpmaYap(sayi1: sayi1, sayi2: sayi2)
        }
    }
}

extension ViewController: PresenterToViewProtocol {
    func viewaVeriGonder(sonuc: String) {
        label.text = sonuc
    }
}
