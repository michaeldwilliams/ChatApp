//
//  Message.swift
//  ChatApp
//
//  Created by Michael Williams on 8/23/16.
//  Copyright © 2016 Michael D. Williams. All rights reserved.
//

import Foundation

struct Message {
    let user: String
    let text: String
    
    init (user: String, text: String) {
        self.user = user
        self.text = text
        
    }
}