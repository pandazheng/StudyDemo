//
//  ViewController.swift
//  AlamofireDemo
//
//  Created by pandazheng on 15/5/23.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var image : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //GET
        //Alamofire.request(.GET,"http://www.baidu.com")
        
        Alamofire.request(.GET,"http://httpbin.org/get",parameters:["foo":"bar"]).response{
            (request,response,data,error) in
            println(request.URLString)
            //println(response)
            //println(error)
        }
        
//        Alamofire.request(.GET,"http://api.douban.com/labs/bubbler/user/ahbei",parameters:nil).response{
//            (request,response,data,error) in
//            //println(response)
//            //println(data!)
//            
//            let json: AnyObject? = NSJSONSerialization.JSONObjectWithData(data! as! NSData, options: NSJSONReadingOptions.allZeros, error: nil)
//            if let j = json as? NSDictionary
//            {
//                //println(j.description)
//                
//                let homepage : AnyObject? = j["homepage"]
//                println(homepage!)
//            }
//        }
        
//        Alamofire.request(Method.GET,"http://api.douban.com/labs/bubbler/user/ahbei").responseJSON(options: NSJSONReadingOptions.allZeros) { (req, _, data, _) -> Void in
//            //println(req.URLString)
//            //println(data!)
//            
//            if let j = data as? NSDictionary
//            {
//                let homepage: AnyObject? = j["homepage"]
//                println(homepage!)
//                let icon : String! = j["icon"] as! String
//                println(icon!)
        
                //方法一
                //self.image.image = UIImage(data: NSData(contentsOfURL: NSURL(string: icon)!)!)
                
                //方法二
//                let url = NSURL(string: icon)
//                let request = NSURLRequest(URL: url!)
//                
//                NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler: { (response, data, error) -> Void in
//                    if error == nil
//                    {
//                        self.image.image = UIImage(data: data)
//                    }
//                })
                
                
//            }
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

