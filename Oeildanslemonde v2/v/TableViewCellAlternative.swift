//
//  TableViewCellAlternative.swift
//  Oeildanslemonde v2
//
//  Created by Paul Cottin on 16/03/2019.
//  Copyright © 2019 Paul Cottin. All rights reserved.
//

import UIKit

class TableViewCellAlternative: UITableViewCell {
    
    @IBOutlet weak var lieuIVI: UIImageView!
    
    @IBOutlet weak var nomLieu: UILabel!
    
    
    var lieu: Lieu? {
        didSet {
            if lieu != nil {
               lieuIVI.image = lieu!.image
              nomLieu.text = lieu!.nom
                
            }
    }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
