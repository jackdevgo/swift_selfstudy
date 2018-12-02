//
//  ViewController.swift
//  HelloUIImageView
//
//  Created by jason on 2018/12/2.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let foxImage = UIImage(named: "Fox")
        myImageView.image = foxImage
        myImageView.layer.borderColor = UIColor.black.cgColor
        myImageView.layer.borderWidth = 2.0
        
        //程式產生
        let codeImage = UIImage(named: "Dog")
        let codeImageView = UIImageView(frame: CGRect(x:0,y:0,width:view.frame.width,height:view.frame.height))
        codeImageView.image = codeImage
        codeImageView.contentMode = .scaleToFill
        view.addSubview(codeImageView)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

