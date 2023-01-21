//
//  ViewController.swift
//  URLSessionUsage
//
//  Created by Yusuf Can Bircan on 21.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //addPerson()
    }
    
    func addPerson() {
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php")!)
        request.httpMethod = "POST"
        
        let postString = "kisi_ad=Yusuf & kisi_tel=9999999"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {
                print("errorrr.")
                return
            }
            
            do {
                
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any] {
                    print(json)
                }
            } catch {
                print(error.localizedDescription)
            }
        
        }.resume()
    }
}

