//
//  MyTableViewController.swift
//  HelloTableViewController
//
//  Created by jason on 2018/12/4.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    @IBAction func editButtonPress(_ sender: UIBarButtonItem) {
        if self.tableView.isEditing == true{
            sender.title = "Edit"
            self.tableView.isEditing = false
        }else{
            sender.title = "Done"
            self.tableView.isEditing = true
        }
    }
    
    let fruitArray:NSMutableArray = ["apple","banana","mango","watermelone"]
    let animalArray:NSMutableArray = ["cat","dog","elephant","rabbit"]
    let myRefreshControl = UIRefreshControl()
    var tableData:NSMutableArray = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableData = animalArray
        myRefreshControl.backgroundColor = UIColor.lightGray
        myRefreshControl.tintColor = UIColor.yellow
        self.refreshControl = myRefreshControl
        self.refreshControl!.addTarget(self, action: #selector(MyTableViewController.refreshList(_:)), for: .valueChanged)
        
        self.tableView.contentInset = UIEdgeInsets(top: 40.0, left: 0.0, bottom: 0.0, right: 0.0)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @objc func refreshList(_ sender:UIRefreshControl){
        if tableData == animalArray {
           self.tableData = fruitArray
        }else{
            self.tableData = animalArray
        }
        self.tableView.reloadData()
        self.refreshControl!.endRefreshing()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = tableData[indexPath.row] as? String

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select section :\(indexPath.section)")
        print("select row: \(indexPath.row)")
        
        print("select name :\(tableData[indexPath.row])")
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableData.removeObject(at: indexPath.row)
            //tableData.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        tableData.exchangeObject(at: sourceIndexPath.row, withObjectAt: destinationIndexPath.row)
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let shareAction = UITableViewRowAction(style: .normal, title: "Share", handler: {(action,indexPath) in print("share"); tableView.isEditing = false})
        shareAction.backgroundColor = UIColor.blue
        let doneAction = UITableViewRowAction(style: .normal, title: "Done", handler: {(action,indexPath) in print("Done"); tableView.isEditing = false})
        doneAction.backgroundColor = UIColor.gray
        let deleteAction = UITableViewRowAction(style: .normal, title: "Delete", handler: {(action,indexPath) in print("Delete"); self.tableData.removeObject(at: indexPath.row) ; self.tableView.reloadData(); tableView.isEditing = false})
        deleteAction.backgroundColor = UIColor.red

       
        return [deleteAction,shareAction,doneAction]
    }
 
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
