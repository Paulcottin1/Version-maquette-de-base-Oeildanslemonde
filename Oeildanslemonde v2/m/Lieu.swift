//
//  Lieu.swift
//  Oeildanslemonde v2
//
//  Created by Paul Cottin on 14/03/2019.
//  Copyright © 2019 Paul Cottin. All rights reserved.
//

import UIKit
import CoreLocation

class Lieu {
    
    private var _nom: String
    private var _desc: String
    private var _image: UIImage?
    private var _latitude: Double
    private var _longitude: Double
    
    var nom: String {
        return _nom
    }
    
    var desc: String {
        return _desc
    }
    var image: UIImage? {
        return _image
    }
    
    var coordonne: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: _latitude, longitude: _longitude)
    }
    
    init(nom: String, desc: String, image: UIImage, latitude: Double, longitude: Double) {
        
        _nom = nom
        _desc = desc
        _image = image
        _latitude = latitude
        _longitude = longitude
    }
    
    
    
    
}
