//
//  ViewController.swift
//  HelloTableView
//
//  Created by jason on 2018/12/4.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let animalArray = ["cat","dog","elephant","rabbit"]
    let fruitArray = ["apple","banana","mango","watermelon"]
    
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
        let cellImageView = cell.contentView.subviews[0] as! UIImageView
        let cellText = cell.contentView.subviews[1] as! UILabel
        if indexPath.section == 0{
            cellImageView.image = UIImage(named: animalArray[indexPath.row])
            cellText.text = " "+animalArray[indexPath.row]+" "
            cell.accessoryType = .detailDisclosureButton
        }else{
            cellText.text = " "+fruitArray[indexPath.row]+" "
            cell.accessoryType = .detailButton

        }
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

