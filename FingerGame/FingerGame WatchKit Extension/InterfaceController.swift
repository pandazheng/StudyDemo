//
//  InterfaceController.swift
//  FingerGame WatchKit Extension
//
//  Created by pandazheng on 15/6/21.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var labWin: WKInterfaceLabel!
    @IBOutlet weak var labLose: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        labWin.setText("\(win)")
        labLose.setText("\(lose)")
    }

    
    @IBAction func onCuiZi() {
        onComputer()
        m = 1
        self.presentControllerWithName("result", context: nil)
    }
    
    @IBAction func onJianDao() {
        onComputer()
        m = 2
        self.presentControllerWithName("result", context: nil)
    }
    
    @IBAction func onBu() {
        onComputer()
        m = 3
        self.presentControllerWithName("result", context: nil)
    }
    
    //返回电脑出的拳
    func onComputer()
    {
        c = random() % 3 //值是0-2
        c += 1 //1-3
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

//全局变量
//赢的次数
var win : Int = 0
//输的次数
var lose : Int = 0
//电脑出的拳
var c : Int = 1
//我出的拳
var m : Int = 1
