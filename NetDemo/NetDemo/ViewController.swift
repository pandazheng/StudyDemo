//
//  ViewController.swift
//  NetDemo
//
//  Created by pandazheng on 15/5/23.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView : UIImageView!
    
    @IBOutlet weak var labelTemp : UILabel!
    @IBOutlet weak var labelWeather : UILabel!
    @IBOutlet weak var labelLocation : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://api.k780.com:88/?app=qr.get&data=test&level=L&size=10")
        let request = NSURLRequest(URL: url!)
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue()) { (response:NSURLResponse!, data:NSData!, error:NSError!) -> Void in
            println(data)
            if error == nil
            {
                //self.imageView.image = UIImage(data: data)
            }

        }
        
        
        NSURLConnection.sendAsynchronousRequest(NSURLRequest(URL: NSURL(string: "http://api.k780.com:88/?app=weather.future&weaid=1&&appkey=10003&sign=b59bc3ef6191eb9f747dd4e83c99f2a4&format=json")!), queue: NSOperationQueue()) { (response:NSURLResponse!, data:NSData!, error:NSError!) -> Void in
            if error == nil
            {
                if let json = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.allZeros, error: nil) as? NSDictionary
                {
                    let result = json.valueForKey("result") as! [NSDictionary]
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        self.labelLocation.text = result[0]["citynm"] as? String
                        self.labelTemp.text = result[0]["temperature"] as? String
                        self.labelWeather.text = result[0]["weather"] as? String
                    })

                    
                    let icon = result[0]["weather_icon"] as? String
                    println(icon!)
                    //self.imageView.image = UIImage(data: NSData(contentsOfURL: NSURL(string: icon!)!)!)
                    //GCD
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        self.imageView.image = UIImage(data: NSData(contentsOfURL: NSURL(string: icon!)!)!)
                    })
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

