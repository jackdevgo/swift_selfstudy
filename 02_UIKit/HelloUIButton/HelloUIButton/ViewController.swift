//
//  ViewController.swift
//  HelloUIButton
//
//  Created by jason on 2018/12/1.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("button pressed")
    }

    @objc func hitme(_ button:UIButton){
        print("new button pressed")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //程式產生按鈕
        let newButton = UIButton(type:.system)
        newButton.frame = CGRect(x:200,y:200,width:100,height:50)
        newButton.setTitle("Press", for: .normal)
        newButton.setTitle("Pressed", for: .highlighted)
        newButton.backgroundColor = UIColor.yellow
        newButton.addTarget(self, action: #selector(ViewController.hitme(_:)), for: .touchUpInside)
        view.addSubview(newButton)
        
        //產生圖片按扭
        let newButton2 = UIButton(type:.custom)
        newButton2.frame = CGRect(x:200,y:400,width:100,height:50)
        newButton2.setImage(UIImage(named: "PlayButton"), for: .normal)
        newButton2.setImage(UIImage(named: "PlayButtonPressed"), for: .selected)
        newButton2.addTarget(self, action: #selector(ViewController.hitme(_:)), for: .touchUpInside)
        view.addSubview(newButton2)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

}

