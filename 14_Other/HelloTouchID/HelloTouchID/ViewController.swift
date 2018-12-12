//
//  ViewController.swift
//  HelloTouchID
//
//  Created by jason on 2018/12/12.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let context = LAContext()
        var error:NSError?
        let reasonString = "請用TouchID認證"
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error){
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reasonString, reply: {(success:Bool,error:Error?) in
                if success{
                    print("認證ok")
                }else{
                    if let nsError = error as NSError?{
                    switch nsError.code {
                    case LAError.systemCancel.rawValue:
                        print("認證過程被系統取消")
                    case LAError.userCancel.rawValue:
                        print("認證過程被使用者取消")
                    case LAError.userFallback.rawValue:
                        print("使用者選擇輸入密碼")
                            OperationQueue.main.addOperation{
                            self.showAlert()
                            }
                            default:
                            OperationQueue.main.addOperation{
                            self.showAlert()
                        }
                        
                    }
                        
                    }
                }
            })
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func showAlert(){
        let myAlert = UIAlertController(title: "Touch ID 認證", message: "請輸入密碼", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .cancel, handler: {(alertAction) in
            if let myTextField = myAlert.textFields?.first as UITextField?{
                if myTextField.text == "OLOVESWIFT" {
                    print("成功")
                }else{
                    print("失敗")
                }
            }
        })
        myAlert.addAction(okAction)
        myAlert.addTextField(configurationHandler: { (myTextField:UITextField) in
            myTextField.placeholder = "請輸入密碼"
            myTextField.isSecureTextEntry = true
            })
        self.present(myAlert, animated: true, completion: nil)
    }


}

