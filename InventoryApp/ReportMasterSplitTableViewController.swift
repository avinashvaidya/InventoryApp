//
//  ReportMasterSplitTableViewController.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 7/1/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import UIKit

protocol ReportOptionSelectionDeletegate: class {
    func reportOptionSelected(row : Int)
}

class ReportMasterSplitTableViewController: UITableViewController,UITableViewDelegate {

    var detailViewController : ReportDetailSplitViewController? = nil
    
    
    // weak var delegate : ReportOptionSelectionDeletegate?
    var selectedItem : String = "ICOMS Exception"
    
    let reportOptions = ["ICOMS Exception","Truck Exception","Matched"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        
        if let split = self.splitViewController{
            let controllers = split.viewControllers
            self.detailViewController = controllers[controllers.count - 1].topViewController as? ReportDetailSplitViewController
            //self.detailViewController?.delegate = self
        }
        */
        
    }
    
    func didSelectMenuItem(item:String){
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return reportOptions.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reportMasterCell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = reportOptions[indexPath.row]
        

        return cell
    }
    
/*
    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }

   override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
        selectedItem = self.reportOptions[indexPath.row]
    
    }

*/
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showReportDetailSegue") {
            var detail: ReportDetailSplitViewController
            
            //detail = segue.destinationViewController as! ReportDetailSplitViewController
            
            
            if let navigationController = segue.destinationViewController as? UINavigationController {
                detail = navigationController.topViewController as! ReportDetailSplitViewController
            } else {
                detail = segue.destinationViewController as! ReportDetailSplitViewController
            }
            
            
            if let path = tableView.indexPathForSelectedRow() {
                detail.changeView(selectedItem)
            }
        }
    }

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
