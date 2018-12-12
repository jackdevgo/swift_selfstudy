//
//  ViewController.swift
//  HelloPhoneVibration
//
//  Created by jason on 2018/12/12.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    @IBAction func makeItShake(_ sender: UIButton) {
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

