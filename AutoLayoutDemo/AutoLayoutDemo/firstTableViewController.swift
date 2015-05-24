//
//  firstTableViewController.swift
//  AutoLayoutDemo
//
//  Created by pandazheng on 15/5/24.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class firstTableViewController: UITableViewController {
    
    var labelArray = Array<String>()     //用于存储label文字内容
    
    var prototypeCell : firstTableViewCell!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var nib = UINib(nibName: "firstTableViewCell", bundle: nil)
        self.tableView.registerNib(nib, forCellReuseIdentifier: "firstTableViewCell")
        
        //初始化prototypecell以便复用
        prototypeCell = tableView.dequeueReusableCellWithIdentifier("firstTableViewCell") as! firstTableViewCell

        
        //循环生成label文字内容
        for i in 1...10
        {
            var text = ""
            for j in 1...i
            {
                text += "Auto Layout"
            }
            labelArray.append(text)
        }
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
        return labelArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("firstTableViewCell", forIndexPath: indexPath) as! firstTableViewCell
        
//        if indexPath.row < 3
//        {
//            cell.logoImageView.image = UIImage(named: indexPath.row.description)
//        }
        
        cell.firstLabel?.text = labelArray[indexPath.row]
        
        var image = UIImage(named: (indexPath.row % 3).description)
        if image!.size.width > 80
        {
            image = image!.resizeToSize(CGSizeMake(80, image!.size.height * (80 / image!.size.width)))
        }
        cell.logoImageView.image = image
        return cell
    }
    
    
    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let cell = prototypeCell
        cell.firstLabel.text = labelArray[indexPath.row]
        return cell.contentView.systemLayoutSizeFittingSize(UILayoutFittingCompressedSize).height + 1
    }

}
