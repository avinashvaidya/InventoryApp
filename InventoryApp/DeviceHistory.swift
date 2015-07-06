//
//  DeviceHistory.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 7/6/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import Foundation
import CoreData

class DeviceHistory: NSManagedObject {

    @NSManaged var techId: String
    @NSManaged var siteId: String
    @NSManaged var uploadDate: String
    @NSManaged var inventoryId: String

}
