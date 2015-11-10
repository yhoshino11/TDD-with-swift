//
//  UserSpec.swift
//  sample
//
//  Created by Yu Hoshino on 11/11/15.
//  Copyright © 2015 Yu Hoshino. All rights reserved.
//

import UIKit
import Foundation
import Quick
import Nimble
import Mockingjay
import Alamofire
import SwiftyJSON

class UserSpec : QuickSpec {
    override func spec() {
        describe("User") {
            it("has name") {
                let user = User.init(name: "yhoshino11")
                expect(user.name).to(equal("yhoshino11"))
            }
            
            it("runs function") {
                let user = User.init(name: "yhoshino11")
                expect(user.test()).to(equal("test"))
            }
        }
    }
}

class ViewControllerSpec : QuickSpec {
    override func spec() {
        
        var viewController: ViewController!
        
        beforeEach {
            viewController = ViewController()
            let body = ["hoge":"fuga"]
            self.stub(http(.GET, uri: "http://jsonplaceholder.typicode.com"), builder: json(body))
        }
        
        describe("ViewController") {
            beforeEach {
                let _ = viewController.viewDidLoad()
            }
            
            it("notification") {
                expect(viewController.info).toEventually(equal("notification"))
            }
        }
    }
}