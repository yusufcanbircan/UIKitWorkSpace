//
//  ViewController.swift
//  SearchingOnMap
//
//  Created by Yusuf Can Bircan on 25.01.2023.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var mapView: MKMapView!
    
    var request = MKLocalSearch.Request()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
        mapView.delegate = self
        
        var location = CLLocationCoordinate2D(latitude: 41.0370014, longitude: 28.9763369)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        
        request.region = mapView.region
        
        
    }

}

extension ViewController: UISearchBarDelegate, MKMapViewDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.view.endEditing(true)
        request.naturalLanguageQuery = searchBar.text!
        
        if mapView.annotations.count > 0 {
            mapView.removeAnnotations(mapView.annotations)
        }
        
        let search = MKLocalSearch(request: request)
        
        search.start(completionHandler: { (response, error) in
            if error != nil {
                print("error")
            } else if response?.mapItems.count == 0 {
                print("no place like that.")
            } else {
                
                for place in response!.mapItems {
                    
                    if let name = place.name,
                       let phone = place.phoneNumber {
                        
                        let pin = MKPointAnnotation()
                        pin.coordinate = place.placemark.coordinate
                        pin.title = name
                        pin.subtitle = phone
                        
                        self.mapView.addAnnotation(pin)
                    }
                }
            }
        })
        
    }
}
