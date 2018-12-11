//
//  ViewController.swift
//  HelloMKMapView
//
//  Created by jason on 2018/12/4.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController ,CLLocationManagerDelegate,MKMapViewDelegate{
    @IBOutlet weak var myMap: MKMapView!
    @IBAction func longPressAction(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .began {
            print("long press")
        }
        let touchPoint = sender.location(in: self.myMap)
        let coordinate = myMap.convert(touchPoint, toCoordinateFrom: self.myMap)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "新景點"
        annotation.subtitle = "一定要來喔"
        myMap.addAnnotation(annotation)
    }
    
    var locationManager:CLLocationManager!
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        let latitude:CLLocationDegrees = 48.858532
        let longitude:CLLocationDegrees = 2.294481
        let coordinate:CLLocationCoordinate2D=CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let latDelta:CLLocationDegrees = 0.01
        let lonDelta:CLLocationDegrees = 0.01
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        let region:MKCoordinateRegion = MKCoordinateRegion(center: coordinate, span: span)
        
        myMap.setRegion(region, animated: true)
        myMap.mapType =  .standard
        */
        locationManager = CLLocationManager()
        locationManager.requestWhenInUseAuthorization()
        
        let cordinate = locationManager.location?.coordinate
        print("latitude:\(cordinate?.latitude)")
        print("longitude:\(cordinate?.longitude)")
        let latDelta:CLLocationDegrees = 0.01
        let lonDelta:CLLocationDegrees = 0.01
        let span:MKCoordinateSpan=MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        if cordinate != nil {
            let region:MKCoordinateRegion = MKCoordinateRegion(center: cordinate!, span: span)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = cordinate!
            annotation.title = "鐵塔一極棒"
            annotation.subtitle = "歡迎來此一遊"

            myMap.setRegion(region, animated: true)
            myMap.addAnnotation(annotation)
        }
   
        /*
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.activityType = .automotiveNavigation
        locationManager.delegate = self
        locationManager.startUpdatingHeading()
        
        myMap.userTrackingMode = .followWithHeading
 */
        // Do any additional setup after loading the view, typically from a nib.
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let cordinate = locations[0].coordinate
        print("latitude:\(cordinate.latitude)")
        print("longitude:\(cordinate.longitude)")
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation{
            return nil
        }
        let identifier = "MyPin"
        var result = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        /*
        if result == nil{
            result = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        }else{
            result?.annotation = annotation
        }
        result?.canShowCallout = true
        (result as! MKPinAnnotationView).pinTintColor = UIColor.blue
        (result as! MKPinAnnotationView).animatesDrop = true
        return result
        */
        if result == nil{
            result = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        }else{
            result?.annotation = annotation
        }
        result?.canShowCallout = true
        result?.image = UIImage(named: "MyPin")
        
        let starImageView = UIImageView(image: UIImage(named: "Star"))
        result?.leftCalloutAccessoryView = starImageView
        let button = UIButton(type: .detailDisclosure)
        button.addTarget(self, action: #selector(ViewController.buttonPressed(_:)), for: .touchUpInside)
        result?.rightCalloutAccessoryView = button
        
        return result

    }
    @objc func buttonPressed(_ sender:UIButton){
        print("just pressed button")
    }


}

