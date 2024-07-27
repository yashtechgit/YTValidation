//
//  ViewController.swift
//  YTValidation
//
//  Created by yashtechgit on 07/26/2024.
//  Copyright (c) 2024 yashtechgit. All rights reserved.
//

import UIKit
import Pods_YTValidation_Example

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let objValid = Validator()
        objValid.isValidEmail("test")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

