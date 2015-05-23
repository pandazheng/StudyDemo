//
//  DetailViewController.swift
//  NewsDemo
//
//  Created by pandazheng on 15/5/23.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController
{
    var detailID = NSString()
    
    var detailURL = "http://qingbin.sinaapp.com/api/html/"
    
    @IBOutlet weak var webView : UIWebView!
    @IBOutlet weak var indicator : UIActivityIndicatorView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        loadData()
    }
    
    func loadData()
    {
        self.indicator.startAnimating()
        
        var urlString = detailURL + "\(detailID).html"
        let url : NSURL = NSURL(string: urlString)!
        let request : NSURLRequest = NSURLRequest(URL: url)
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response:NSURLResponse!, data:NSData!, error:NSError!) -> Void in
            self.indicator.stopAnimating()
            
            if error == nil
            {
                self.webView.loadData(data, MIMEType: "text/html", textEncodingName: "utf-8", baseURL: url)
            }
            else
            {
                self.webView.loadHTMLString(error.localizedDescription, baseURL: url)
            }
        }
    }
}
