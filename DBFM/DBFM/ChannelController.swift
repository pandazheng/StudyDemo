//
//  ChannelController.swift
//  DBFM
//
//  Created by panda zheng on 15/4/19.
//  Copyright (c) 2015年 panda zheng. All rights reserved.
//

import UIKit
import QuartzCore

protocol ChannelProtocol
{
    func onChangeChannel(channel:String)
}

class ChannelController : UIViewController , UITableViewDataSource , UITableViewDelegate
{
    @IBOutlet weak var tv: UITableView!
    
    var channelData:NSArray = NSArray()
    var delegate:ChannelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return channelData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "channel")
        
        let rowData:NSDictionary = self.channelData[indexPath.row] as! NSDictionary
        cell.textLabel?.text = rowData["name"] as? String
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var rowData:NSDictionary = self.channelData[indexPath.row] as! NSDictionary
        let channel_id:AnyObject = (rowData["channel_id"] as AnyObject?)!
        let channel:String = "channel=\(channel_id)"
        delegate?.onChangeChannel(channel)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.layer.transform = CATransform3DMakeScale(0.1, 0.1, 1)
        UIView.animateWithDuration(0.25, animations: { () -> Void in
            cell.layer.transform = CATransform3DMakeScale(1, 1, 1)
        })
    }
    
}