//
//  firstTableViewCell.swift
//  AFNetworkingDemo
//
//  Created by pandazheng on 15/5/24.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

import UIKit

class firstTableViewCell: UITableViewCell {
    
    @IBOutlet weak var logoImageView : UIImageView!
    @IBOutlet weak var firstLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
