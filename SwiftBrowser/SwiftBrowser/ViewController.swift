//
//  ViewController.swift
//  SwiftBrowser
//
//  Created by pandazheng on 15/5/14.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIWebViewDelegate , UITextFieldDelegate{

    

    @IBOutlet weak var GoBack: UIButton!
    @IBOutlet weak var GoPrev: UIButton!
    @IBOutlet weak var txtUrl: UITextField!
    @IBOutlet weak var GoButton: UIButton!
    @IBOutlet weak var dataView: UIWebView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.GoBack.enabled = false
        self.GoPrev.enabled = false
        self.txtUrl.delegate = self
        self.dataView.delegate = self
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        self.txtUrl.selectAll(textField)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //GoToUrl(self.GoBack)
        return true
    }
    
    @IBAction func btnGoBack(sender: AnyObject) {
        if self.dataView.canGoBack
        {
            self.dataView.goBack()
        }
    }

    @IBAction func btnGoPrev(sender: AnyObject) {
        if self.dataView.canGoForward
        {
            self.dataView.goForward()
        }
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        self.GoBack.enabled = self.dataView.canGoBack
        self.GoPrev.enabled = self.dataView.canGoForward
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError) {
        self.dataView.stopLoading()
        self.dataView.loadHTMLString(error.localizedDescription, baseURL: nil)
    }
    
    @IBAction func editExit(sender: AnyObject) {
        txtUrl.resignFirstResponder()
    }
    
    @IBAction func GoToUrl(sender: AnyObject) {
        txtUrl.resignFirstResponder()
        
        var userUrl  : NSString = self.txtUrl.text as NSString
        let urlPre = "http://"
        
        var url : NSURL = NSURL(string: userUrl as String)!
        if (url.scheme != "http" && url.scheme != "https")
        {
            userUrl = urlPre.stringByAppendingString(userUrl as String)
            self.txtUrl.text = userUrl as String
            url = NSURL(string: userUrl as String)!
        }
        
        var request : NSMutableURLRequest = NSMutableURLRequest(URL: url)
        request.timeoutInterval = 3
        indicator.startAnimating()
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response:NSURLResponse!, data:NSData!, error:NSError!) -> Void in
            self.indicator.stopAnimating()
            var resp : NSHTTPURLResponse = NSHTTPURLResponse(URL: url, MIMEType: "text/html", expectedContentLength: 1240, textEncodingName: "utf-8")
            if resp.statusCode == 200
            {
                self.dataView.loadData(data, MIMEType: "text/html", textEncodingName: "utf-8", baseURL: url)
            }
            else
            {
                if (error != nil)
                {
                    self.dataView.loadHTMLString(error.localizedDescription, baseURL: url)
                }
                else
                {
                    self.dataView.loadData(data, MIMEType: "text/html", textEncodingName: "utf-8", baseURL: url)
                }
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

