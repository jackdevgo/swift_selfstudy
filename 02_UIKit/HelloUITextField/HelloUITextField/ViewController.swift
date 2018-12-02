//
//  ViewController.swift
//  HelloUITextField
//
//  Created by jason on 2018/12/2.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func textFieldEndEditing(_ sender: UITextField) {
        print(sender.text!)
        sender.text = ""
        }
    
    @IBOutlet weak var myTextField: UITextField!
    
    @objc func codeTextFieldEndEditing(_ textField:UITextField){
        print(textField.text!)
        textField.text = ""
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //產生 toolBar
        let myToolBar = UIToolbar(frame:CGRect(x:0,y:0,width:view.frame.width,height:44))
        //產生barButtonItem按鈕
        let removeButton=UIBarButtonItem(title: "remove", style: .plain, target: self, action: #selector(ViewController.removeKeyboard))
        //產生flexible space
        let someSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        myToolBar.setItems([someSpace,removeButton], animated: false)
         self.myTextField.inputAccessoryView = myToolBar
        myTextField.becomeFirstResponder()
        
        //程式 建立文字輸入匡
        let codeTextField = UITextField(frame: CGRect(x:40,y:80,width:300,height:30))
        codeTextField.borderStyle = .roundedRect
        codeTextField.textAlignment = .left
        codeTextField.keyboardType = .default
        codeTextField.returnKeyType = .send
        codeTextField.placeholder = "programmatically generated"
        codeTextField.addTarget(self, action: #selector(ViewController.codeTextFieldEndEditing(_:)), for: .editingDidEndOnExit)
        view.addSubview(codeTextField)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @objc func removeKeyboard(){
        myTextField.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myTextField.resignFirstResponder()
    }
    
   

}

