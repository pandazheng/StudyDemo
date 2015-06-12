//
//  ViewController.swift
//  iAdsDemo
//
//  Created by pandazheng on 15/6/12.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController , ADBannerViewDelegate{

    @IBOutlet weak var Banner: ADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Banner.hidden = true
        Banner.delegate = self
        
        self.canDisplayBannerAds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        NSLog("Error!")
    }
    
    func bannerViewWillLoadAd(banner: ADBannerView!) {
        
    }
    

    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        return true
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        Banner.hidden = false
    }
    
}

