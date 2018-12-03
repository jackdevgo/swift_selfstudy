//
//  ViewController.swift
//  HelloUIScrollView
//
//  Created by jason on 2018/12/2.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate{

    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myScrollView.contentSize.width = 1080
        myScrollView.contentSize.height = 1080
        myScrollView.minimumZoomScale = 1.0
        myScrollView.maximumZoomScale = 5.0
        
        //程式產生
        let bigImageView = UIImageView(frame: CGRect(x:0,y:0,width:1080,height:1080))
        let bigimage = UIImage(named: "MyCat.jpg")
        bigImageView.image = bigimage
        let codeScrollView = UIScrollView(frame: CGRect(x:0,y:0,width:view.frame.width,height:view.frame.height))
        codeScrollView.contentSize.width = 1080
        codeScrollView.contentSize.height = 1080
        codeScrollView.addSubview(bigImageView)
        codeScrollView.showsVerticalScrollIndicator = false
        codeScrollView.showsHorizontalScrollIndicator = false
        codeScrollView.bounces = false
        view.addSubview(codeScrollView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return myImageView
    }

}

