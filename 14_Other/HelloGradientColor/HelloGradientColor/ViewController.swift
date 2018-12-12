//
//  ViewController.swift
//  HelloGradientColor
//
//  Created by jason on 2018/12/12.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let color1 = UIColor(red: 1, green: 0, blue: 0.68, alpha: 1)
        let color2 = UIColor(red: 1, green: 0, blue: 0.11, alpha: 1)
        let gradient = CAGradientLayer()
        gradient.frame = self.view.frame
        gradient.colors = [color1.cgColor,color2.cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

