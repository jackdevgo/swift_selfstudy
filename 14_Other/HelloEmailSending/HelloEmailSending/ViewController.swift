//
//  ViewController.swift
//  HelloEmailSending
//
//  Created by jason on 2018/12/11.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit
import MessageUI
class ViewController: UIViewController ,MFMailComposeViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        if (MFMailComposeViewController.canSendMail()){
            let emailTitle = "E-mail Test"
            let messageBody = "Hello"
            let destinationAddress = ["idsdf@hotmail.com"]
            let myMailController = MFMailComposeViewController()
            myMailController.mailComposeDelegate = self
            myMailController.setSubject(emailTitle)
            myMailController.setMessageBody(messageBody, isHTML: false)
            myMailController.setToRecipients(destinationAddress)
            self.present(myMailController, animated: true, completion: nil)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        switch result{
        case .cancelled:
            print("cancel")
        case .saved:
            print("save")
        case .sent:
            print("sent")
        case .failed:
            print("fail")
        }
        self.dismiss(animated: false, completion: nil)
    }


}

