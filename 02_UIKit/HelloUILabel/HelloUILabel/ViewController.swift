//
//  ViewController.swift
//  HelloUILabel
//
//  Created by jason on 2018/12/1.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = "Hello swift!\n第二行"
        myLabel.textColor = UIColor.red
        myLabel.textAlignment = .center
        myLabel.backgroundColor = UIColor.yellow
        myLabel.font = UIFont(name:"Arial",size:30)
        
        //生成 label
        let anotherLabel = UILabel(frame:CGRect(x:200,y:200,width:200,height:50))
        anotherLabel.text = "Hi I was made by you"
        anotherLabel.backgroundColor = UIColor.magenta
        view.addSubview(anotherLabel)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

