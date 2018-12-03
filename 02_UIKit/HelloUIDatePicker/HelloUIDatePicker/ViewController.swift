//
//  ViewController.swift
//  HelloUIDatePicker
//
//  Created by jason on 2018/12/3.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBAction func myDatePickerAction(_ sender: UIDatePicker) {
        let dateFormatter  = DateFormatter()
        dateFormatter.dateFormat = "yyyy MM dd EE HH:mm"
        print(dateFormatter.string(from: myDatePicker.date))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //程式產生
        let codeDatePicker = UIDatePicker(frame: CGRect(x:0,y:view.frame.height-216,width:view.frame.width,height:216))
        codeDatePicker.datePickerMode = .dateAndTime
        codeDatePicker.minuteInterval = 30
        codeDatePicker.addTarget(self, action: #selector(ViewController.codeDatePickerAction(_:)), for: .valueChanged)
        view.addSubview(codeDatePicker)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func codeDatePickerAction(_ sender:UIDatePicker){
        let dateFormatter  = DateFormatter()
        dateFormatter.dateFormat = "yyyy MM dd EE HH:mm"
        print(dateFormatter.string(from: sender.date))
        
    }


}

