//
//  ViewController.swift
//  HelloTelephoneCall
//
//  Created by jason on 2018/12/11.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string:"tel://12345678")
        if url != nil{
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }

        // Do any additional setup after loading the view, typically from a nib.
    }


}

