//
//  ChatTableViewCell.swift
//  ChatApp
//
//  Created by Michael Williams on 8/23/16.
//  Copyright © 2016 Michael D. Williams. All rights reserved.
//

import UIKit
import SnapKit

class ChatTableViewCell: UITableViewCell {

    lazy var nameLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)
        label.textColor = UIColor.darkGrayColor()
        return label
    }()
    
    
    lazy var bodyLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        label.textColor = UIColor.blackColor()
        return label
    }()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
   
    func configureSubviews() {
        self.addSubview(self.nameLabel)
        self.addSubview(self.bodyLabel)
        
        
        nameLabel.snp_makeConstraints { (make) in
            make.top.equalTo(self).offset(10)
            make.left.equalTo(self).offset(20)
            make.right.equalTo(self).offset(-20)
        }
        bodyLabel.snp_makeConstraints { (make) in
            make.top.equalTo(nameLabel.snp_bottom).offset(1)
            make.left.equalTo(self).offset(20)
            make.bottom.equalTo(self).offset(-10)
            make.right.equalTo(self).offset(20)
        }
    }
    
}
