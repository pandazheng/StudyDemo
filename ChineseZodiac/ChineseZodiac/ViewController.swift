//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by pandazheng on 15/5/14.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var offset = 4

    @IBOutlet weak var yearField: UITextField!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func okTapped(sender: AnyObject) {
        yearField.resignFirstResponder()
        
        if let year = yearField.text.toInt()
        {
            var imageNumber = (year - offset) % 12
            image.image = UIImage(named: String(imageNumber))
        }
    }
    
    @IBAction func editExit(sender: AnyObject) {
        yearField.resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

