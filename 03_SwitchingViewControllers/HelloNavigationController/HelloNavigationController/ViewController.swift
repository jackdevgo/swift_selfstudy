//
//  ViewController.swift
//  HelloNavigationController
//
//  Created by jason on 2018/12/3.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonPressed(_ sender: UIBarButtonItem) {
        /*let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let yellowViewController = mainStoryBoard.instantiateViewController(withIdentifier: "yellowView")
        self.navigationController?.pushViewController(yellowViewController, animated: true)
 */
        self.performSegue(withIdentifier: "gotoYellowView", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

