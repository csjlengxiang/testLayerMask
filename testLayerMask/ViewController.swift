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
        
        // 置于底层
        let lb1 = UILabel()
        lb1.frame = CGRectMake(0, 20, 100, 50)
        lb1.text = "你好哇"
        lb1.textColor = UIColor.redColor()
        lb1.textAlignment = NSTextAlignment.Center
        self.view.addSubview(lb1)
        
        // 覆盖层
        lb = UILabel()
        lb.frame = CGRectMake(0, 20, 100, 50)
        lb.text = "你好哇"
        lb.textColor = UIColor.blackColor()
        lb.textAlignment = NSTextAlignment.Center
        self.view.addSubview(lb)
        
        // 包裹覆盖层
        //        ct = UIView()
        //        ct.backgroundColor = UIColor.grayColor()
        //        ct.addSubview(lb)
        //        ct.frame = CGRectMake(0, 20, 100, 50)
        //        ct.layer.borderWidth = 1
        //        ct.layer.borderColor = UIColor.blueColor().CGColor
        //        self.view.addSubview(ct)
        
        // 包裹层,置为透明
        
        lb.layer.mask = self.jianbianMask()
        
    }
    
    func rectMask() -> CALayer {
        ml = CAShapeLayer()
        ml.frame = CGRectMake(0, 10, 50, 30)
        ml.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8).CGColor
        return ml
    }
    
    func jianbianMask() -> CALayer {
        let g = CAGradientLayer()
        g.frame = CGRectMake(0, 10, 50, 30)
        let c1 = UIColor(red: 0, green: 0, blue: 0, alpha: 1).CGColor
        let c2 = UIColor(red: 0, green: 0, blue: 0, alpha: 0).CGColor
        
        g.colors = [c2,c1,c2]
        g.locations = [0.1,0.5,0.9]
        
        g.startPoint = CGPoint(x: 0, y: 0)
        g.endPoint = CGPoint(x: 1, y: 0)
        
        ml = g
        return ml
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

