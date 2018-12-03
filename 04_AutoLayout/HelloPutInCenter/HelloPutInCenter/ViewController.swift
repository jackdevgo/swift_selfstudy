//
//  ViewController.swift
//  HelloPutInCenter
//
//  Created by jason on 2018/12/3.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let redView = UIView(frame: CGRect(x:0,y:0,width:100,height:100))
        redView.backgroundColor = UIColor.red
        view.addSubview(redView)
        redView.center = view.center
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100))
        view.addConstraint(NSLayoutConstraint(item: redView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100))
        // Do any additional setup after loading the view, typically from a nib.
    }


}

