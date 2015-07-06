//
//  ReportViewController.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 6/24/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import UIKit

class ReportViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var reportTable: UITableView!
    
    var reportItems = ["testReport1","testReport7","testReport8"]
    var reportItemsList2 = ["test report 2","test report 3","test report 4"]
    var reportItemsList3 = ["test report 5","test report 6","testReport9"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reportTable.dataSource = self
        reportTable.delegate = self
        //reportTable.contentInset = UIEdgeInsetsMake(0, 10, 5, 10)
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        //reportTable.contentInset = UIEdgeInsetsMake(0, 10, 5, 10)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
        //return 3
    }
  
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        var title: UILabel = UILabel()
        title.backgroundColor = UIColor.cyanColor()
        
        switch (section){
        case 0:
                title.text = "List1"
        case 1:
            title.text = "List 2"
                   case 2:
            title.text = "List 3"
            
        default:
            title.text = "Other"
           
        }
        
        return title
    }
    
    
   
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section==0 && indexPath.row==0{
            cell.hidden = true
            
            
        }
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        let str = "0.0"
        var height = CGFloat((str as NSString).floatValue)
       
        println(indexPath.section)
        println(indexPath.row)
        
        if (indexPath.section==0 && indexPath.row == 0) {
            
            return height
        }else{
            return reportTable.rowHeight
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell : ReportTableViewCell = reportTable.dequeueReusableCellWithIdentifier("reportTableCell", forIndexPath:indexPath) as! ReportTableViewCell
        
        switch indexPath.section{
        case 0:
            cell.barcodeId!.text = reportItems[indexPath.row]
        case 1:
            cell.barcodeId!.text = reportItemsList2[indexPath.row]
        case 2:
            cell.barcodeId!.text = reportItemsList3[indexPath.row]
        default:
            cell.barcodeId!.text = "Others"
            
        }
        
        
        cell.truckImg.image = UIImage(named: "Delivery-done")
        cell.icomsImg.image = UIImage(named: "Laptop-done")
        
        return cell;
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "reportDetailSegue" {
            var detailVC :ReportDetailViewController = segue.destinationViewController as! ReportDetailViewController
            
        }
    }
}
