//
//  ViewController.swift
//  HelloPopover
//
//  Created by jason on 2018/12/3.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPopoverPresentationControllerDelegate {
    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showPopover", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPopover"{
            let vc = segue.destination
            vc.preferredContentSize = CGSize(width:200,height:100)
            let controller = vc.popoverPresentationController
            if controller != nil{
                controller?.delegate = self
            }
        }
    }
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

