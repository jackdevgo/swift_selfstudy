//
//  ViewController.swift
//  HelloUITextView
//
//  Created by jason on 2018/12/2.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextView.text = "很久以前\n有一個小紅帽\n這個故事太老套"
        
        //程式產生
        let codeTextView = UITextView(frame: CGRect(x:48,y:300,width:356,height:100))
        codeTextView.text = "hello\nthis is TextView by code\nHave fun!"
        codeTextView.isEditable = true
        codeTextView.isSelectable = true
        codeTextView.textAlignment = .left
        view.addSubview(codeTextView)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

