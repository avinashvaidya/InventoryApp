//
//  LoginViewController.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 6/24/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginBtnClicked(sender: AnyObject) {
        dismissViewControllerAnimated(true,
            completion: nil)
    }
    
    @IBAction func cancelBtnClicked(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
