//
//  TruckExDetails.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 7/6/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import Foundation
import CoreData

class TruckExDetails: NSManagedObject {

    @NSManaged var inventoryId: String
    @NSManaged var itemId: String
    @NSManaged var serialNumber: String
    @NSManaged var status: String

}
