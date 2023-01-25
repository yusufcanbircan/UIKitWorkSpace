//
//  ViewController.swift
//  MapKitWithCoreLocation
//
//  Created by Yusuf Can Bircan on 25.01.2023.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    @IBOutlet var slider: UISlider!
    
    var locationManager: CLLocationManager = CLLocationManager()
    
    var sliderValue:Double = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        sliderValue = Double(sender.value)
    }
    

}



extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location: CLLocation = locations[locations.count-1]
        
        let coordinate = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: sliderValue, longitudeDelta: sliderValue)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        mapView.setRegion(region, animated: true)
        
        mapView.showsUserLocation = true
    }
}

