//
//  ViewController.swift
//  Oeildanslemonde v2
//
//  Created by Paul Cottin on 14/03/2019.
//  Copyright © 2019 Paul Cottin. All rights reserved.
//

import UIKit

let segueID = "Detail"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Lieus.count
        
        

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let lieu = Lieus[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "paul") as? TableViewCellAlternative {
            cell.lieu = lieu
            return cell
        }
        return UITableViewCell()
   }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueID, sender: Lieus[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID {
            if let sd = segue.destination as? DetailController {
                sd.lieuRecu = sender as? Lieu
            }
        }
    }
    
    var cellId = "LieuCell"
var Lieus : [Lieu] = []
    
func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            Lieus.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
           
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    

    override func viewDidLoad() {
       super.viewDidLoad()
       tableView.delegate = self
       tableView.dataSource = self
       Lieus = LieuCollection().all()
        // Do any additional setup after loading the view.
 }
    
    
    @IBAction func refresh(_ sender: Any) {
        Lieus = LieuCollection().all()
        tableView.reloadData()
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
