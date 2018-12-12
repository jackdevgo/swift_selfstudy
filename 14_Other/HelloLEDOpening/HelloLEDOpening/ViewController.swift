//
//  ViewController.swift
//  HelloLEDOpening
//
//  Created by jason on 2018/12/12.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var lightStrength:Float = 1.0
    @IBAction func turnOnOrOffTheLight(_ sender: UISwitch) {
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        if device?.hasTorch == true{
            if device?.isFlashAvailable == true {
                do {
                    try device?.lockForConfiguration()
                    if sender.isOn == true{
                        do{
                            try device?.setTorchModeOn(level: lightStrength)
                            
                        }catch _ {
                            
                        }
                    }else{
                        device?.torchMode = .off
                    }
                }catch _ {
                    device?.unlockForConfiguration()
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

