//
//  ViewController.swift
//  testLayerMask
//
//  Created by csj on 15/9/16.
//  Copyright © 2015年 csj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var lb: UILabel!
    var ct: UIView!
    var ml: CALayer!
    
    @IBAction func clicked(sender: AnyObject) {
        ml.frame = CGRectMake(ml.frame.origin.x + 1, 0, 50, 50)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lb = UILabel()
        lb.frame = CGRectMake(0, 10, 100, 30)
        lb.text = "你好哇"
        lb.textColor = UIColor.blackColor()
        lb.textAlignment = NSTextAlignment.Center
        ct = UIView()
        ct.backgroundColor = UIColor.grayColor()
        ct.addSubview(lb)
        ct.frame = CGRectMake(0, 20, 100, 50)
        self.view.addSubview(ct)
        
        ml = CAShapeLayer()
        ml.frame = CGRectMake(0, 0, 50, 50)
        ml.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).CGColor
        ct.layer.mask = ml
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

