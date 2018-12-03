//
//  ViewController.swift
//  HelloScrollViewWithPageControl
//
//  Created by jason on 2018/12/3.
//  Copyright © 2018 jason. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var myScrollView: UIScrollView!
    
    var codePageControll : UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidLayoutSubviews() {
        myScrollView.frame.size.width = view.frame.size.width
        myScrollView.frame.size.height = view.frame.size.height
        print(myScrollView.frame.size.width)
        print(myScrollView.frame.size.height)
        print(view.frame.size.width)
        print(view.frame.size.height)
        
        myScrollView.contentSize.width = myScrollView.frame.width*3
        let viewColors = [UIColor.red,UIColor.green,UIColor.blue]
        for i in 0..<3{
            let onView = UIView(frame: CGRect(x:CGFloat(i)*myScrollView.frame.size.width,y:0,width:myScrollView.frame.size.width,height:myScrollView.frame.size.height))
            onView.backgroundColor = viewColors[i]
            myScrollView.addSubview(onView)
        }
        myScrollView.isPagingEnabled = true
        myScrollView.bounces = false
        
        
        codePageControll = UIPageControl(frame: CGRect(x:view.frame.size.width/2-30,y:view.frame.size.height-50,width:60,height:37))
        codePageControll.pageIndicatorTintColor = UIColor.black
        codePageControll.currentPageIndicatorTintColor = UIColor.lightGray
        codePageControll.numberOfPages = 3
        codePageControll.currentPage = 0
        codePageControll.addTarget(self, action: #selector(ViewController.codePageControllAction(_:)), for: .valueChanged)
        view.addSubview(codePageControll)
        
    }
    
    @objc func codePageControllAction(_ sender:UIPageControl){
        let currentPageNumber = sender.currentPage
        let width = myScrollView.frame.size.width
        let offset = CGPoint(x:width*CGFloat(currentPageNumber),y:0)
        myScrollView.setContentOffset(offset, animated: true)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPageNumber = Int(round(myScrollView.contentOffset.x/scrollView.frame.size.width))
        codePageControll.currentPage = currentPageNumber
    }


}

