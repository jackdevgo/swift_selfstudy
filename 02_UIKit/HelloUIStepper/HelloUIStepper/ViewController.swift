//
//  ViewController.swift
//  HelloUIStepper
//
//  Created by jason on 2018/12/2.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func myStepperAction(_ sender: UIStepper) {
        print(Int(sender.value))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //程式產生
        let codeStepper = UIStepper(frame: CGRect(x:52,y:100,width:96,height:29))
        codeStepper.minimumValue = 0
        codeStepper.maximumValue = 100
        codeStepper.value = 0
        codeStepper.stepValue = 4
        codeStepper.autorepeat = true
        codeStepper.isContinuous = true
        codeStepper.wraps = true
        codeStepper.addTarget(self, action: #selector(ViewController.codeStrepperAction(_:)), for: .valueChanged)
        view.addSubview(codeStepper)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func codeStrepperAction(_ sender:UIStepper){
        print(Int(sender.value))
    }

}

