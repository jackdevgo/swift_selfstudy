//
//  ViewController.swift
//  HelloUISegmentedControl
//
//  Created by jason on 2018/12/2.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func myToggleAction(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            print("public")
        }else{
            print("private")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //程式產生
        let codeToggle = UISegmentedControl(frame: CGRect(x:101,y:150,width:115,height:29))
        codeToggle.insertSegment(withTitle: "one", at: 0, animated: false)
        codeToggle.insertSegment(withTitle: "two", at: 1, animated: false)
        codeToggle.selectedSegmentIndex = 0
        codeToggle.addTarget(self, action: #selector(ViewController.codeToggleAction(_:)), for: .valueChanged)
        view.addSubview(codeToggle)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func codeToggleAction(_ sender:UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            print("one")
        }else{
            print("two")
        }
        
    }

}

