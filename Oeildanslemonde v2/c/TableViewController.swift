//
//  TableViewController.swift
//  Oeildanslemonde v2
//
//  Created by Paul Cottin on 14/03/2019.
//  Copyright © 2019 Paul Cottin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var Lieus : [Lieu] = []
    var cellID = "Lieu"
    var test = "test"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Lieus = LieuCollection().all()
        tableView.backgroundColor = UIColor.clear
        let bg = UIImageView(frame: view.bounds)
        bg.image = Lieus[1].image
        tableView.backgroundView = bg
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Lieus.count
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      if let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? TableViewCell {
            cell.setupCell(Lieus[indexPath.row])
        
        return cell
    } else {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     let lieu = Lieus[indexPath.row]
        cell.textLabel?.text = lieu.nom
        cell.imageView?.image = lieu.image
     
     return cell
     }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueID, sender: Lieus[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueID {
            if let sd = segue.destination as? DetailController {
                sd.lieuRecu = sender as? Lieu
            }
        }
    }
    
     // Override to support conditional editing of the table view.
    
    // override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
  
     
   //  }
    
    
    
   
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
        Lieus.remove(at: indexPath.row)
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
    
    
    
    @IBAction func refresh(_ sender: Any) {
        Lieus = LieuCollection().all()
        tableView.reloadData()
    }
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
