//
//  ViewController.swift
//  HelloTransformImage
//
//  Created by jason on 2018/12/2.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UFO: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        UFO.layer.cornerRadius = 100
        UFO.clipsToBounds = true
        
        UFO.transform = CGAffineTransform(a: 1, b: 0, c: 0, d: 1, tx: -60, ty: -60)
        UFO.transform = CGAffineTransform(rotationAngle: CGFloat(30.0*Double.pi/180.0))
        UFO.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        let transform1 = CGAffineTransform(rotationAngle: CGFloat(30.0*Double.pi/180.0))
        let transform2 = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        //swift 4 要改成下面的方式才能結合兩種變形, 1.旋轉 2.縮小
        UFO.transform = transform1.concatenating(transform2)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

