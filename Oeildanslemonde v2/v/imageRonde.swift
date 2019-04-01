//
//  imageRonde.swift
//  Oeildanslemonde v2
//
//  Created by Paul Cottin on 16/03/2019.
//  Copyright © 2019 Paul Cottin. All rights reserved.
//

import UIKit

class imageRonde: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup() {
        layer.cornerRadius = frame.height / 3
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 2
        clipsToBounds = true
        contentMode = .scaleAspectFill
        
        
        
    }
    
    
    
}
