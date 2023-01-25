//
//  ViewController.swift
//  MapKitUsage
//
//  Created by Yusuf Can Bircan on 25.01.2023.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = CLLocationCoordinate2D(latitude: 41.0370014, longitude: 28.9763369)
        let span = MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001)
        let region = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = location
        pin.title = "Taksim"
        pin.subtitle = "Here is Taksim."
        
        mapView.addAnnotation(pin)
    }


}

