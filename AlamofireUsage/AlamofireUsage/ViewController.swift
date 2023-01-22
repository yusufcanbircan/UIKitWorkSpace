//
//  ViewController.swift
//  AlamofireUsage
//
//  Created by Yusuf Can Bircan on 22.01.2023.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //addPerson()
        //fetchAllData()
        // deletePerson()
        //updatePerson()
        searchData()
    }
    
    func addPerson() {
        
        let params: Parameters = ["kisi_ad":"Yusuf", "kisi_tel":"000000"]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/insert_kisiler.php", method: .post, parameters: params).response { response in
            
            if let data = response.data {
                
                do {
                    
                    let json = try JSONSerialization.jsonObject(with: data)
                    print(json)
                    
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func updatePerson() {
        let params: Parameters = ["kisi_id":"14225", "kisi_ad":"UpdatedYusuf", "kisi_tel":"00000001"]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/update_kisiler.php", method: .post, parameters: params).response { response in
            if let data = response.data {
                do{
                    
                    let json = try JSONSerialization.jsonObject(with: data)
                    print(json)
                    
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func deletePerson() {
        let params:Parameters = ["kisi_id":"14227"]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/delete_kisiler.php", method: .post, parameters: params).response { response in
            if let data = response.data {
                
                do {
                    
                    let json = try JSONSerialization.jsonObject(with: data)
                    print(json)
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func fetchAllData() {
        
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler.php", method: .get).response { response in
            
            if let data = response.data {
                
                do {
                    
                    let json = try JSONDecoder().decode(KisilerCevap.self, from: data)
                    
                    if let items = json.kisiler {
                        for item in items {
                            print("Person Id: \(item.kisi_id!)")
                            print("Person Name: \(item.kisi_ad!)")
                            print("Person Tel: \(item.kisi_tel!) \n")
                        }
                    }
                    
                } catch {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func searchData() {
        let params:Parameters = ["kisi_ad":"a"]
        
        AF.request("http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php", method: .post, parameters: params).response { response in
            
            if let data = response.data {
                do{
                    
                    let json = try JSONDecoder().decode(KisilerCevap.self, from: data)
                    
                    if let items = json.kisiler {
                        for item in items {
                            print("Person Id: \(item.kisi_id!)")
                            print("Person Name: \(item.kisi_ad!)")
                            print("Person Tel: \(item.kisi_tel!) \n")
                        }
                    }
                    
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
    }
}

