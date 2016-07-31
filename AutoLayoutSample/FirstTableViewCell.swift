//
//  FirstTableViewCell.swift
//  AutoLayoutSample
//
//  Created by 岡田みなみ on 2016/07/31.
//  Copyright © 2016年 minamin0730. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var separaterConstraintDefault: NSLayoutConstraint!
    @IBOutlet weak var separatorConstraintHidden: NSLayoutConstraint!
    
    let HIGH_PRIORITY: UILayoutPriority = 750
    let LOW_PRIORITY: UILayoutPriority = 250
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configuration(sectionCount: Int) {
        if sectionCount == 1 {
            separaterConstraintDefault.priority = LOW_PRIORITY
            separatorConstraintHidden.priority = HIGH_PRIORITY
        } else if sectionCount == 2 {
            separaterConstraintDefault.priority = HIGH_PRIORITY
            separatorConstraintHidden.priority = LOW_PRIORITY
        }
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
