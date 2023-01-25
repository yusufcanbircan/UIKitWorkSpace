//
//  ViewController.swift
//  CoreLocationUsage
//
//  Created by Yusuf Can Bircan on 25.01.2023.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    var locationManager: CLLocationManager = CLLocationManager()
    
    @IBOutlet var latitudeLabel: UILabel!
    @IBOutlet var longtitudeLabel: UILabel!
    @IBOutlet var speedLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }


}

extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        var location: CLLocation = locations[locations.count-1]
        
        latitudeLabel.text = "Latitude: \(location.coordinate.latitude)"
        longtitudeLabel.text = "Longtitude: \(location.coordinate.longitude)"
        speedLabel.text = "Speed: \(location.speed)"
    }
}
