//
//  TechIdViewController.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 6/26/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import UIKit

class TechIdViewController: UIViewController {

    @IBOutlet weak var techId: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    @IBAction func setTechIdClicked(sender: AnyObject) {
        
        if !techId.text.isEmpty{
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
}
