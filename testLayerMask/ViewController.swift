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
        
        // 置于底层
        let lb1 = UILabel()
        lb1.frame = CGRectMake(0, 20, 100, 50)
        lb1.text = "你好哇"
        lb1.textColor = UIColor.redColor()
        lb1.textAlignment = NSTextAlignment.Center
        self.view.addSubview(lb1)
        
        // 覆盖层
        lb = UILabel()
        lb.frame = CGRectMake(0, 10, 100, 30)
        lb.text = "你好哇"
        lb.textColor = UIColor.blackColor()
        lb.textAlignment = NSTextAlignment.Center
        
        // 包裹覆盖层
        ct = UIView()
        ct.backgroundColor = UIColor.grayColor()
        ct.addSubview(lb)
        ct.frame = CGRectMake(0, 20, 100, 50)
        ct.layer.borderWidth = 1
        ct.layer.borderColor = UIColor.blueColor().CGColor
        self.view.addSubview(ct)
        
        // 包裹层,置为透明
        ml = CAShapeLayer()
        ml.frame = CGRectMake(0, 0, 50, 50)
        ml.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).CGColor
        ct.layer.mask = ml
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

