//
//  ScannedItems.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 7/6/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import Foundation
import CoreData

class ScannedItems: NSManagedObject {

    @NSManaged var techId: String
    @NSManaged var serialNumber: String
    @NSManaged var createdDate: NSDate
    @NSManaged var siteId: String

}
