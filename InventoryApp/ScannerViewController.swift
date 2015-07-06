//
//  ScannerViewController.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 6/24/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import UIKit

class ScannerViewController: UIViewController,UITableViewDataSource {

    @IBOutlet weak var barcode: UITextField!
    
    @IBOutlet weak var sendBarcodeBtn: UIButton!
    
    @IBOutlet weak var totalScannedItems: UILabel!
    
    @IBOutlet weak var uploadItemsBtn: UIButton!
    
    @IBOutlet weak var scanItemsTable: UITableView!
    
    @IBOutlet weak var techIdBtn: UIButton!
    var scanItems = ["Test"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scanItemsTable.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        var alert = UIAlertController(title: "TechId",message:nil, preferredStyle: .Alert)
        //var save = UIAlertAction(title: "Save", style: .Default,hand)
        //var cancel = UIAlertAction(title:"Cancel",style:.Default,handler:nil)
        
        var save = UIAlertAction(title: "Save", style: .Default) { (action) -> Void in
            var textField = alert.textFields![0] as! UITextField
            if(!textField.text.isEmpty){
                self.techIdBtn.setTitle(textField.text, forState: UIControlState.Normal)
            }else{
                
            }
        }
        
         alert.addTextFieldWithConfigurationHandler(nil)
        
        alert.addAction(save)
        //alert.addAction(cancel)
        
       // presentViewController(alert, animated: true, completion: nil)
        
        performSegueWithIdentifier("scanTechIdSegue", sender: self)

    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scanItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell : ScanTableViewCell = scanItemsTable.dequeueReusableCellWithIdentifier("scanTableCell") as! ScanTableViewCell
        
        cell.barcodeId!.text = scanItems[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        self.scanItems.removeAtIndex(indexPath.row)
        
        // self.scannedItems.dele
        
        self.scanItemsTable.reloadData()
       
    }
    
    //method to handle send barcode clicked
    @IBAction func sendBarcodeClicked(sender: AnyObject) {
        
        self.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        self.modalPresentationStyle = .CurrentContext
        self.presentViewController(LoginViewController(), animated: true, completion: nil)
       
    }

    //method to handle upload items clicked
    @IBAction func uploadItemsClicked(sender: AnyObject) {
        var alert = UIAlertController(title: "Upload items",message:"In order to upload list, please authorize with your credentials", preferredStyle: .Alert)
        var save = UIAlertAction(title: "Save", style: .Default,handler:nil)
        var cancel = UIAlertAction(title:"Cancel",style:.Default,handler:nil)
        
        alert.addTextFieldWithConfigurationHandler(nil)
         alert.addTextFieldWithConfigurationHandler(nil)
        
        alert.addAction(save)
        alert.addAction(cancel)
        
        presentViewController(alert, animated: true, completion: nil)

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var segueIdentifier = segue.identifier
        
        if segueIdentifier=="scanTechIdSegue"{
        
            var destinationVC = segue.destinationViewController as! TechIdViewController
            
        }
    }
}
