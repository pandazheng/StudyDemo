//
//  ViewController.swift
//  ReachabilityDemo
//
//  Created by pandazheng on 15/5/21.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

/*
NotReachable = 0,
ReachableViaWiFi = 2,
ReachableViaWWAN = 1
*/

import UIKit

//enum statuType : Int
//{
//    case NotReachable = 0
//    case ReachableViaWiFi = 2
//    case ReachableViaWWAN = 1
//    
//    func simpleDescription() -> String{
//        switch self
//        {
//        case .NotReachable:
//            return "Not"
//        case .ReachableViaWiFi:
//            return "Wifi"
//        case .ReachableViaWWAN:
//            return "WWAN"
//        default:
//            return "OTHER"
//        }
//    }
//}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let result = statuType.ReachableViaWWAN
//        let resultRawValue = result.simpleDescription()
//        println(resultRawValue)
        
        let ret = Reachability(hostName: String("www.baidu.com"))
        if ret.isReachable(){
            println("Reachable......\n")    //网络可连接
        }
        
        
        println(ret.isConnectionRequired().boolValue)
        println(ret.isConnectionRequired().description)
        
        println(ret.currentReachabilityStatus().rawValue)
        
        
        switch (ret.currentReachabilityStatus().rawValue)
        {
        case 0:
            println("not reachable......\n")  //网络未连接
            break;
        case 1:
            println("WWAN.......\n")   //在WWAN环境下
            break;
        case 2:
            println("WiFi......\n");   //在WiFi环境下
            break;
        default:
            println("other......\n");  //其它
        }
        
        if ret.isReachableViaWiFi()
        {
            println("WiFi......\n")    //在WiFi环境下
        }
        else if ret.isReachableViaWWAN()
        {
            println("WWAN......\n")     //在WWAN环境下
        }
        else
        {
            println("other......\n")   //其它
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

