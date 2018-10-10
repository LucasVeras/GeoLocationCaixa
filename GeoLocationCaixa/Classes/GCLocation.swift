//
//  GCLocation.swift
//  GeoComponent
//
//  Created by Capgemini-Lucas on 08/10/2018.
//  Copyright © 2018 Capgemini-Lucas. All rights reserved.
//

import UIKit
import CoreLocation
//import SelectionDialog
import SCLAlertView

public enum LocationError: Error {
    case AuthorizationDenied
    case AuthorizationNotDetermined
    case InvalidLocation
}

open class GCLocation: NSObject, CLLocationManagerDelegate {
    
    public static let shared = GCLocation()
    
    var locationManager = CLLocationManager()

    public typealias LocationClosure = ((_ location: CLLocation?, _ error: Error?)->())
    private var completionHandler: LocationClosure?
    
    public override init() {
        super.init()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    private func executionCompleted(location: CLLocation?, error: Error?) {
        locationManager.stopUpdatingLocation()
        
        completionHandler?(location, error)
    }
    
    public func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse, .authorizedAlways:
            manager.startUpdatingLocation()
        case .denied:
            executionCompleted(location: nil, error: LocationError.AuthorizationDenied)
        case .notDetermined:
            executionCompleted(location: nil, error: LocationError.AuthorizationNotDetermined)
        default:
            break
        }
    }
    
    public func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        executionCompleted(location: nil, error: LocationError.InvalidLocation)
    }
    
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        
        executionCompleted(location: location, error: nil)
    }
    
    public func testDialog() {
        // Get started
        SCLAlertView().showInfo("Important info", subTitle: "You are great")
        
//        let dialog = SelectionDialog(title: "Dialog", closeButtonTitle: "Close")
//        dialog.addItem(item: "I have icon :)", icon: UIImage(named: "Icon1")!)
//        dialog.addItem(item: "I have icon and handler :D", icon: UIImage(named: "Icon2")!, didTapHandler: { () in
//            print("Item didTap!")
//        })
//        dialog.addItem(item: "I have nothing :(")
//        dialog.addItem(item: "I have nothing :(")
//        dialog.addItem(item: "I have nothing :(")
//        dialog.addItem(item: "I have nothing :(")
//        dialog.addItem(item: "I have nothing :(")
//        dialog.addItem(item: "I have nothing :(")
//        dialog.addItem(item: "I have nothing :(")
//        dialog.addItem(item: "I have nothing :(")
//        dialog.addItem(item: "I have nothing :(")
//        dialog.addItem(item: "I have nothing :(")
//        dialog.show()
    }
    
    public func getLocation(completion: @escaping LocationClosure) {
        // Get started
        SCLAlertView().showInfo("Important info", subTitle: "You are great")
//        completionHandler = completion
//
//        if CLLocationManager.authorizationStatus() == .authorizedAlways || CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
//            locationManager.startUpdatingLocation()
//        } else if CLLocationManager.authorizationStatus() == .notDetermined {
//            executionCompleted(location: nil, error: LocationError.AuthorizationNotDetermined)
//        } else if CLLocationManager.authorizationStatus() == .denied {
//            executionCompleted(location: nil, error: LocationError.AuthorizationDenied)
//        }
    }
    
}
