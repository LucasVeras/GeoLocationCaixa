//
//  ViewController.swift
//  GeoLocationCaixa
//
//  Created by Lucas Veras Aguiar Cardoso on 10/09/2018.
//  Copyright (c) 2018 Lucas Veras Aguiar Cardoso. All rights reserved.
//

import UIKit
import GeoLocationCaixa
import CoreLocation

class ViewController: UIViewController {

    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.locationManager.requestWhenInUseAuthorization()
    }

    @IBAction func buttonClicked(_ sender: Any) {
        getLocation()
    }
    
    private func getLocation() {
        //        GCLocation.shared.testDialog()
        GCLocation.shared.getLocation { (location, error) in
            if let errorResponse = error {
                switch errorResponse {
                case LocationError.AuthorizationNotDetermined:
                    
                    
                    break
                default:
                    break
                }
            } else {
                print(location!.coordinate)
            }
        }
    }

}

