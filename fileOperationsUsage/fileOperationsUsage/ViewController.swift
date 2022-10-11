//
//  ViewController.swift
//  fileOperationsUsage
//
//  Created by Yusuf Can Bircan on 9.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func writeButton(_ sender: Any) {
        
        let message: String = textField.text!
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let filePath = dir.appendingPathExtension("file.txt")
            
            do {
                
                try message.write(to: filePath, atomically: false, encoding: String.Encoding.utf8)
                
                textField.text = ""
                
            } catch {
                print("Error while writing to path!")
            }
        }
    }
    
    @IBAction func readButton(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let filePath = dir.appendingPathExtension("file.txt")
            
            do {
                
                textField.text = try String(contentsOf: filePath, encoding: String.Encoding.utf8)
                
            } catch {
                
                print("Error while reading!")
            
            }
        }
        
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let filePath = dir.appendingPathExtension("file.txt")
            if FileManager.default.fileExists(atPath: filePath.path) {
                do {
                    try FileManager.default.removeItem(at: filePath)
                    textField.text = ""
                } catch {
                    
                }
            }
        }
        
    }
    
    @IBAction func writeImageButton(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let filePath = dir.appendingPathExtension("image.png")
            
            let image = UIImage(named: "2048")
            
            do {
                
                try image!.pngData()?.write(to: filePath)
                
            } catch {
                print("Error while image writing!")
            }
        }
    }
    
    @IBAction func showImageButton(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let filePath = dir.appendingPathExtension("image.png")
            
            self.imageView.image = UIImage(contentsOfFile: filePath.path)
        }
        
    }
    
    @IBAction func deleteImageButton(_ sender: Any) {
        
        if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            let filePath = dir.appendingPathExtension("image.png")
            
            do {
                try FileManager.default.removeItem(at: filePath)
            } catch {
                print("Error while image deleting!")
            }
        }
        
    }
}

