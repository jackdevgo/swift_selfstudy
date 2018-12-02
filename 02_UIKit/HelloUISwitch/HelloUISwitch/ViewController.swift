//
//  ViewController.swift
//  HelloUISwitch
//
//  Created by jason on 2018/12/2.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func mySwitchAction(_ sender: UISwitch) {
        if sender.isOn == true{
            print("Switch is now on")
        }else{
            print("Switch is now off")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //程式產生
        let codeSwitch = UISwitch(frame: CGRect(x:65,y:161,width:51,height:31))
        codeSwitch.isOn = true
        codeSwitch.addTarget(self, action: #selector(ViewController.codeSwitchAction(_:)), for: .valueChanged)
        view.addSubview(codeSwitch)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func codeSwitchAction(_ sender:UISwitch){
        if sender.isOn == true{
            print("Switch is now on")
        }else{
            print("Switch is now off")
        }
        
    }

}

