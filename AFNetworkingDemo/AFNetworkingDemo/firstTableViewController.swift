//
//  firstTableViewController.swift
//  AFNetworkingDemo
//
//  Created by pandazheng on 15/5/24.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class firstTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nib = UINib(nibName: "firstTableViewCell", bundle: nil)
        self.tableView.registerNib(nib, forCellReuseIdentifier: "firstTableViewCell")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("firstTableViewCell", forIndexPath: indexPath) as! firstTableViewCell
        
        //cell.textLabel?.text = indexPath.row.description
        cell.firstLabel.text = indexPath.row.description
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }

}
