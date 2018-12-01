//
//  ViewController.swift
//  HelloUIView
//
//  Created by jason on 2018/12/1.
//  Copyright © 2018 jason. All rights reserved.
//

/*問題描述
 升級到Swift 3後，之前使用CGRectMake ，CGPointMake，CGSizeMake，CGRectZero，CGPointZero 提示不可用，提示
  在Swift 3 CGRectMake , CGPointMake, CGSizeMake，CGRectZero和CGPointZero 怎麼轉換為CGRect , CGPoint, CGSize使用
 
 問題解決
 Swift 2 -> Swift 3對應的變換
 
 CGPointMake - > CGPoint
  let point = CGPoint(x: 0,y :0) // x和y的值可以是CGFloat, Double, Int

 CGSizeMake - > CGSize
 let size = CGSize(width: 100, height: 100) // width和height的值可以是CGFloat, Double, Int
 
 CGRectMake - > CGRect
 用CGPoint和CGSize來構建
 let rect = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: 100, height: 100))

 用CGFloat，Double和Int值構建
 let rect = CGRect(x: 0, y: 0, width: 100, height: 100) // 参数类型可以为CGFloat, Double, Int

 CGRectZero-> CGRect.zero＆CGPointZero - > CGPoint.zero
 let size = CGSize.zero // width = 0, height = 0
 let point = CGPoint.zero // x = 0, y = 0，等同于CGPointZero
 let rect = CGRect.zero // 等同与 CGRectZero
 
 */
import UIKit
var blueView:UIView!

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //let viewArea = CGRectMake(50.0,50.0,100.0,100.0)
        let viewArea = CGRect(x:50.0,y:50.0,width:100.0,height:100.0)
        blueView = UIView(frame:viewArea)
        blueView.backgroundColor=UIColor.blue
        view.addSubview(blueView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        print(blueView.frame.origin.x)
        print(blueView.frame.origin.y)
        print(blueView.frame.size.width)
        print(blueView.frame.size.height)
        print(blueView.center.x)
        print(blueView.center.y)
        
        //設定位置及大小
        blueView.frame.origin.x = 100
        blueView.frame.origin.y = 200
        blueView.frame.size.width = 50
        blueView.frame.size.height = 150
        
        //第二種方法
        let newPoint = CGPoint(x:100,y:200)
        blueView.frame.origin = newPoint
        let newSize = CGSize(width:50,height: 150)
        blueView.frame.size = newSize
        
        //第三種方法
        let newArea = CGRect(x:100, y:200, width:50, height:150)
        blueView.frame = newArea
    }

}

