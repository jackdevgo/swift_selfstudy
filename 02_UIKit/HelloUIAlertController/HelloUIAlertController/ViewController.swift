//
//  ViewController.swift
//  HelloUIAlertController
//
//  Created by jason on 2018/12/3.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonPressed(_ sender: UIButton) {
        let myAlert = UIAlertController(title: "Hello", message: "How are you?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Fine", style: .default, handler: {
            (action:UIAlertAction)->() in
            let alertTextField = myAlert.textFields?[0] as! UITextField
            print("\(alertTextField.text) fine")
            self.dismiss(animated: true, completion: nil)
        })
        let cancelAction = UIAlertAction(title: "so so", style: .default, handler: {
            (action:UIAlertAction)->() in
            print("so so")
            self.dismiss(animated: true, completion: nil)
            })
        
        myAlert.addTextField(configurationHandler:  {
            (textField:UITextField)->Void in
            textField.placeholder = "Enter your name here!"
        })
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        present(myAlert, animated: true, completion: nil)
        
        
        //self.presentingViewController(myAlert,animated:true,completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

