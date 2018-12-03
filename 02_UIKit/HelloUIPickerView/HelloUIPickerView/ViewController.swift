//
//  ViewController.swift
//  HelloUIPickerView
//
//  Created by jason on 2018/12/3.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate{

    let numberArray = ["1","2","3","4","5","6","7","8","9","10"]
    let fruitArray = ["apple","banana","mango","watermelon"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return numberArray.count
        }else{
            return fruitArray.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return numberArray[row]
        }else{
            return fruitArray[row]
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            print("number:\(numberArray[row])")
        }else{
            print("fruit:\(fruitArray[row])")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let codePickerView = UIPickerView(frame: CGRect(x:0,y:0,width:view.frame.width,height:216))
        codePickerView.dataSource = self
        codePickerView.delegate = self
        view.addSubview(codePickerView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

