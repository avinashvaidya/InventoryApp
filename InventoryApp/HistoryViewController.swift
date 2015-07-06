//
//  HistoryViewController.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 6/24/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

   
    @IBOutlet weak var button: UIBarButtonItem!
   
    @IBOutlet weak var historyTable: UITableView!
    @IBOutlet weak var pendingUploadTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnClicked2(sender: AnyObject) {
       
            self.pendingUploadTable.hidden = true
      

    }
    @IBAction func btnClicked(sender: AnyObject) {
        if(!pendingUploadTable.hidden){
        pendingUploadTable.hidden = true
        }else{
            pendingUploadTable.hidden = false
        }
    }
}
