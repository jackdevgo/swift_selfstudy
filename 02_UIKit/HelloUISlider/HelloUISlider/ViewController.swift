//
//  ViewController.swift
//  HelloUISlider
//
//  Created by jason on 2018/12/2.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func mySliderAction(_ sender: UISlider) {
        print(lroundf(sender.value))
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //程式產生
        let codeSlider = UISlider(frame: CGRect(x:20,y:100,width:100,height:30))
        codeSlider.maximumValue = 200
        codeSlider.isEnabled = true
        codeSlider.addTarget(self, action: #selector(ViewController.codeSliderAction(_:)), for: .valueChanged)
        view.addSubview(codeSlider)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func codeSliderAction(_ sender:UISlider){
    print(lroundf(sender.value))
        
}
}

