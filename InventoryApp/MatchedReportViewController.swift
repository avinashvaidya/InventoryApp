//
//  MatchedReportViewController.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 7/2/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import UIKit

class MatchedReportViewController: UIViewController {

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
