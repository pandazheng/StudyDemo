//
//  Common.swift
//  Todo
//
//  Created by panda zheng on 15/4/19.
//  Copyright (c) 2015年 panda zheng. All rights reserved.
//

import Foundation

func dateFromString (dateStr : String) -> NSDate
{
    let dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "yyyy-mm-dd"
    let date = dateFormatter.dateFromString(dateStr)
    return date!
}