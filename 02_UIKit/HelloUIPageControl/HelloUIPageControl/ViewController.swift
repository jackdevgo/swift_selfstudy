//
//  ViewController.swift
//  HelloUIPageControl
//
//  Created by jason on 2018/12/2.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myPageControl: UIPageControl!
    @IBAction func myPageControlAction(_ sender: UIPageControl) {
        print(sender.currentPage)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myPageControl.currentPage = 2
        
        //程式產生
        let codePageControl = UIPageControl(frame: CGRect(x:143,y:80,width:128,height:37))
        codePageControl.pageIndicatorTintColor = UIColor.black
        codePageControl.currentPageIndicatorTintColor = UIColor.lightGray
        codePageControl.numberOfPages = 10
        codePageControl.currentPage = 0
        codePageControl.addTarget(self, action: #selector(ViewController.codePageControlAction(_:)), for: .valueChanged)
        view.addSubview(codePageControl)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func codePageControlAction(_ sender:UIPageControl){
        print(sender.currentPage)
    }

}

