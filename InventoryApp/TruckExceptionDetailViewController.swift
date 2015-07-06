//
//  TruckExceptionDetailViewController.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 7/1/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import UIKit

class TruckExceptionDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        if splitViewController?.respondsToSelector("displayModeButtonItem") == true {
            navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem()
            navigationItem.leftItemsSupplementBackButton = true
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationItem.hidesBackButton = true
    }
}
