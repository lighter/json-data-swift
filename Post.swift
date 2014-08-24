//
//  Post.swift
//  json-data
//
//  Created by lighter on 2014/8/24.
//  Copyright (c) 2014年 lighter. All rights reserved.
//

import Foundation

class Post {
    var id:Int
    var username:String
    var email:String

    init(id:Int, username:String, email:String) {
        self.id = id
        self.username = username
        self.email = email
    }

    func toJSON() -> String {
        return ""
    }
}