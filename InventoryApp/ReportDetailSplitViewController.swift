//
//  ReportDetailSplitViewController.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 7/1/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import UIKit


class ReportDetailSplitViewController: UIViewController {
    
    //var delegate : ReportOptionSelectionDeletegate! = nil
    
    var selectedIndex: Int = 1
    
    var item : Int!{
        didSet(row){
             self.refreshUI()
        }
    }
    
    
    func refreshUI(){
       // performSegueWithIdentifier("icomsExceptionSegue", sender: self)
        
    }
    
    func changeView(view:String){
        switch view{
            case "Truck Exception":
                performSegueWithIdentifier("truckExceptionSegue", sender: self)
  
            case "ICOMS Exception":
                performSegueWithIdentifier("icomsExceptionSegue", sender: self)
            
            case "Matched":
                performSegueWithIdentifier("matchedReportSegue", sender: self)
            
            default:
                println("something went wrong")

        }
           }
    
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
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var identifier = segue.identifier
        
        if identifier == "icomsExceptionSegue"{
            var vc = segue.destinationViewController as! ICOMSExceptionDetailViewController
            
        }
    }

}

/*

extension ReportDetailSplitViewController: ReportOptionSelectionDeletegate {
    func reportOptionSelected(row : Int) {
        item = row
    }
}

*/