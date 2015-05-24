//
//  ViewController.swift
//  AFNetworkingDemo
//
//  Created by pandazheng on 15/5/24.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let manager = AFHTTPRequestOperationManager()
        let url = "http://api.openweathermap.org/data/2.5/weather"
        println(url)
        
        let params = ["lat":39.26,"lon":41.03,"cnt":0]
        println(params)
        
        manager.GET(url, parameters: params, success: { (operation:AFHTTPRequestOperation!, responseObject:AnyObject!) -> Void in
            println("JSON:" + responseObject.description!)
            }) { (operation:AFHTTPRequestOperation!, error:NSError!) -> Void in
            println("Error:" + error.localizedDescription)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

