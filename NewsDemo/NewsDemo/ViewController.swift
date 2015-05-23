//
//  ViewController.swift
//  NewsDemo
//
//  Created by pandazheng on 15/5/23.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
    var newsSource : NSArray = NSArray()
    
    let newsUrl = "http://qingbin.sinaapp.com/api/lists?ntype=%E5%9B%BE%E7%89%87&pageNo=2&pagePer=30&list.htm"
    
    @IBOutlet weak var tableView : UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("newsList", forIndexPath: indexPath) as! UITableViewCell
        let cellData : NSDictionary = self.newsSource[indexPath.row] as! NSDictionary
        
        cell.textLabel?.text = cellData["title"] as? String
        cell.imageView?.image = UIImage(named: "cell_photo_default_small")
        cell.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
        
        let image = cellData["thumb"] as? String
        let imageurl : NSURL = NSURL(string: image!)!
        let imgrequest : NSURLRequest = NSURLRequest(URL: imageurl)
        
        NSURLConnection.sendAsynchronousRequest(imgrequest, queue: NSOperationQueue.mainQueue()) { (response:NSURLResponse!, data:NSData!, error:NSError!) -> Void in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                let imgData = UIImage(data: data)
                cell.imageView?.image = imgData
            })
        }
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsSource.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80
    }
    
    func loadData()
    {
        let url : NSURL = NSURL(string: newsUrl)!
        let request : NSURLRequest = NSURLRequest(URL: url)
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response:NSURLResponse!, data:NSData!, error:NSError!) -> Void in
            let jsonData = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as! NSDictionary
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                println(jsonData)
                self.newsSource = jsonData["item"] as! NSArray
                self.tableView.reloadData()
            })
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToDetail"
        {
            let indexPath = self.tableView.indexPathForSelectedRow()
            let cellData = self.newsSource[indexPath!.row] as! NSDictionary
            let webViewDetailController = segue.destinationViewController as! DetailViewController
            webViewDetailController.detailID = cellData["id"] as! NSString
        }
    }
}

