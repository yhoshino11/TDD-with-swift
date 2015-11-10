//
//  ViewController.swift
//  sample
//
//  Created by Yu Hoshino on 11/10/15.
//  Copyright © 2015 Yu Hoshino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var info: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "test", name: "test", object: nil)
        User.notify()
    }

    func test() {
        self.info = "notification"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

