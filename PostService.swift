//
//  PostService.swift
//  json-data
//
//  Created by lighter on 2014/8/24.
//  Copyright (c) 2014年 lighter. All rights reserved.
//

import Foundation

class PostService {
    var setting:Setting!

    init() {
        self.setting = Setting()
    }

    func getPost(callback:(NSDictionary) -> ()) {
        request(setting.viewPosts, callback: callback)
    }

    func request(url:String, callback:(NSDictionary) -> ()) {
        var nsURL = NSURL(string: url)

        let task = NSURLSession.sharedSession().dataTaskWithURL(nsURL) {
            (data, response, error) in
            var error:NSError?
            var response = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
            callback(response)
        }

        task.resume()
    }
}