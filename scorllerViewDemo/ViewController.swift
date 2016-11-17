//
//  ViewController.swift
//  scorllerViewDemo
//
//  Created by 張峻綸 on 2016/11/17.
//  Copyright © 2016年 張峻綸. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    let viewWidth = UIScreen.main.bounds.width
    let viewHeight = UIScreen.main.bounds.height
    var label1 = UILabel()
    var label2 = UILabel()
    var label3 = UILabel()
    
    @IBOutlet weak var btned3: UIButton!
    @IBOutlet weak var btned2: UIButton!
    
    @IBOutlet weak var brned1: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var uiView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scrollView.contentSize.height = 1000
        scrollView.contentSize.width = viewWidth * 3
        label1 = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        label1.text = "第一頁"
        uiView.addSubview(label1)
        
        label2 = UILabel(frame: CGRect(x: 50+viewWidth*1, y: 50, width: 100, height: 100))
        label2.text = "第二頁"
        uiView.addSubview(label2)
        
        label3 = UILabel(frame: CGRect(x: 50+viewWidth*2, y: 50, width: 100, height: 100))
        label3.text = "第三頁"
        uiView.addSubview(label3)
        
    }

    @IBAction func btned1(_ sender: UIButton) {
        let position = CGPoint(x: 0, y: 0)
        scrollView.setContentOffset(position, animated: true)
        
        
    }
    @IBAction func btned2(_ sender: UIButton) {
        let position = CGPoint(x: viewWidth , y: 0)
        scrollView.setContentOffset(position, animated: true)
        btned3.tintColor = UIColor.blue
        btned2.tintColor = UIColor.red
    }
    @IBAction func btned3(_ sender: UIButton) {
        let position = CGPoint(x: viewWidth * 2, y: 0)
        scrollView.setContentOffset(position, animated: true)
        btned3.tintColor = UIColor.red
        btned2.tintColor = UIColor.blue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

