//
//  ViewController.swift
//  HelloTableView
//
//  Created by jason on 2018/12/4.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    let animalArray:NSMutableArray = ["cat","dog","elephant","rabbit"]
    let fruitArray:NSMutableArray = ["apple","banana","mango","watermelon"]
    
    @IBAction func editButtonPress(_ sender: UIBarButtonItem) {
        if self.myTableView.isEditing == true{
            sender.title = "Edit"
            self.myTableView.isEditing = false
        }else{
            sender.title = "Done"
            self.myTableView.isEditing = true
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return animalArray.count
        }else{
            return fruitArray.count
        }
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Animal"
        }else{
            return "Fruit"
        }
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let celllabel = animalArray[indexPath.row] as! String
        let cellImageView = cell.contentView.subviews[0] as! UIImageView
        let cellText = cell.contentView.subviews[1] as! UILabel
        if indexPath.section == 0{
            cellImageView.image = UIImage(named: celllabel)
            //cellImageView.image = UIImage(named: String(animalArray[indexPath.row]))
            cellText.text = animalArray[indexPath.row] as? String
            cell.accessoryType = .detailDisclosureButton
        }else{
            cellText.text = fruitArray[indexPath.row] as? String
            cell.accessoryType = .detailButton

        }
        return cell
    }
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        if sourceIndexPath.section == 0{
            animalArray.exchangeObject(at: sourceIndexPath.row, withObjectAt: destinationIndexPath.row)
        }else{
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

