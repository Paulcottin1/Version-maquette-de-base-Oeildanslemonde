//
//  DetailController.swift
//  Oeildanslemonde v2
//
//  Created by Paul Cottin on 17/03/2019.
//  Copyright © 2019 Paul Cottin. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var LieuImage: imageRonde!
    
    @IBOutlet weak var TextField: UITextView!
    
    var lieuRecu: Lieu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let lieu = lieuRecu else {
            return
        }
        LieuImage.image = lieu.image
        TextField.text = lieu.desc
        LieuImage.setup()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
