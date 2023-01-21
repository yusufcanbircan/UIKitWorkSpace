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
        //updatePerson(id: 14226, ad: "newYusuf", tel: 404040)
        //deletePerson(id: 14226)
        //fetchAll()
        search(searchText: "a")
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
    
    func updatePerson(id:Int, ad:String, tel: Int) {
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/update_kisiler.php")!)
        request.httpMethod = "POST"
        
        let postString = "kisi_id=\(id) & kisi_ad=\(ad) & kisi_tel=\(tel)"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {
                print("errorrr")
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
    
    func deletePerson(id:Int) {
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php")!)
        request.httpMethod = "POST"
        
        let postString = "kisi_id=\(id)"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {
                print("error")
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
    
    func fetchAll() {
        let url = URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php")!
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if error != nil || data == nil {
                print("error")
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
    
    func search(searchText: String) {
        var request = URLRequest(url: URL(string: "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php")!)
        request.httpMethod = "POST"
        
        let postString = "kisi_ad=\(searchText)"
        request.httpBody = postString.data(using: .utf8)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil || data == nil {
                print("error")
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

