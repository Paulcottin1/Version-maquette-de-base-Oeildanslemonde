//
//  ViewControllerCarte.swift
//  Oeildanslemonde v2
//
//  Created by Paul Cottin on 19/03/2019.
//  Copyright © 2019 Paul Cottin. All rights reserved.
//

import UIKit
import MapKit

class ViewControllerCarte: UIViewController {
    
    var lieus: [Lieu] = LieuCollection().all()

    override func viewDidLoad() {
        super.viewDidLoad()
        addAnnotation()
        print("ok")

        // Do any additional setup after loading the view.
    }
    
    func addAnnotation() {
        for lieu in lieus {
            
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = lieu.coordonne
        annotation.title = lieu.nom
        MapView.addAnnotation(annotation)
        
        }
        
    }
    
    
    
    
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: MapView.mapType = .standard
        case 1: MapView.mapType = .satellite
        case 2: MapView.mapType = .hybrid
        default: break
        }
    }
    
    
    @IBOutlet weak var MapView: MKMapView!
    

}
