//
//  ViewController.swift
//  HelloNSUserDefaults
//
//  Created by jason on 2018/12/12.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImage: UIImageView!
    @IBAction func load(_ sender: UIButton) {
        let userDefaults = UserDefaults.standard
        if let name = userDefaults.object(forKey: "name") {
            print ("name:\(name as! String)")
        }
        if let numberArray = userDefaults.object(forKey: "numberArray"){
            print ("numberArray:\(numberArray as! NSArray)")
        }
        if let fruitDict = userDefaults.object(forKey: "fruitDict"){
            print ("fruitDict:\(fruitDict as! NSDictionary)")
        }
        if let imageData = userDefaults.object(forKey: "imageData"){
            myImage.image = UIImage(data: (imageData as! Data))
            //(self.view.subviews[0] as! UIImageView).image = UIImage(data: (imageData as! NSData) as Data)
        }
        print("isGameFun:\(userDefaults.bool(forKey:"isGameFun"))")
        print("HealthPint:\(userDefaults.double(forKey:"HealthPoint"))")
        print("Attack:\(userDefaults.float(forKey:"Attack"))")
        print("Highscore:\(userDefaults.integer(forKey:"Highscore"))")
        if let link = userDefaults.url(forKey: "Link"){
            print("Link:\(link)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let catImage = UIImage(named: "MyCat")
        let imageData = catImage?.jpegData(compressionQuality: 100)
         let userDefaults = UserDefaults.standard
        userDefaults.set("we we", forKey: "name")
        userDefaults.set([1,2,3,4], forKey: "numberArray")
        userDefaults.set(["red":"apple","yellow":"banana"], forKey: "fruitDict")
        userDefaults.set(imageData, forKey: "imageData")
        userDefaults.set(true, forKey: "isGameFun")
        userDefaults.set(100.0, forKey: "HealthPoint")
        userDefaults.set(80.0, forKey: "Attack")
        userDefaults.set(90, forKey: "Highscore")
        userDefaults.set(URL(string: "https://www.appsgaga.com"), forKey: "Link")
        
        userDefaults.synchronize()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

