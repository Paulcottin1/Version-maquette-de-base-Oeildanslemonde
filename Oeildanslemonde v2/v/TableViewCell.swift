//
//  TableViewCell.swift
//  Oeildanslemonde v2
//
//  Created by Paul Cottin on 16/03/2019.
//  Copyright © 2019 Paul Cottin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var nomLabel: UILabel!
    
    @IBOutlet weak var lieuIV: imageRonde!
    
    
    
    var lieu: Lieu!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(_ lieu: Lieu) {
        self.lieu = lieu
        container.layer.cornerRadius = 20
        container.backgroundColor = UIColor.lightGray
        container.layer.borderWidth = 4
        container.layer.borderColor = UIColor.clear.cgColor
        nomLabel.text = self.lieu.nom
        lieuIV.image = self.lieu.image
        lieuIV.layer.cornerRadius = 30
        lieuIV.clipsToBounds = true
        
        
        
        
    }

}
