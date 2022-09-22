//
//  ViewController.swift
//  webViewUsage
//
//  Created by Yusuf Can Bircan on 22.09.2022.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://gelecegiyazanlar.turkcell.com.tr/")!
        
        webView.load(URLRequest(url: url))
        
        
    }


}

