//
//  ApiSpec.swift
//  sample
//
//  Created by Yu Hoshino on 11/11/15.
//  Copyright © 2015 Yu Hoshino. All rights reserved.
//

import Foundation

import Quick
import Nimble
import Mockingjay
import Alamofire
import SwiftyJSON

class RequestHogeAPISpec: QuickSpec {
    var jsonData: JSON!
    var statusCode: Int = 0
    
    override func spec() {
        describe("hoge API") {
            context("when you request hoge API http://jsonplaceholder.typicode.com") {
                beforeEach() {
                    // setup stub
                    let body = [ "name": "kaiba" ]
                    self.stub(http(.GET, uri: "http://jsonplaceholder.typicode.com"), builder: json(body))
                }
                
                it("returns json") {
                    // request async
                    Alamofire.request(.GET, "http://jsonplaceholder.typicode.com").responseJSON(completionHandler: { (response) -> Void in
                        self.jsonData = JSON(response.result.value!)
                        self.statusCode = response.response!.statusCode
                    })
                    expect(self.statusCode).toEventually(equal(200))
                    expect(self.jsonData["name"]).toEventually(equal("kaiba"))
                }
            }
        }
    }
}