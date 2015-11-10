//
//  User.swift
//  sample
//
//  Created by Yu Hoshino on 11/10/15.
//  Copyright © 2015 Yu Hoshino. All rights reserved.
//

import Foundation
import Alamofire
class User {
    var name: String!
    
    init(name: String) {
        self.name = name
    }
    
    func test() -> String {
        return "test"
    }
    
    class func notify() {
        Alamofire.request(.GET, "http://jsonplaceholder.typicode.com").responseJSON { (response) -> Void in
            NSNotificationCenter.defaultCenter().postNotificationName("test", object: nil)
        }
    }
}