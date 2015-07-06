//
//  CurrentTech.swift
//  InventoryApp
//
//  Created by Pankaj Goyal on 7/6/15.
//  Copyright (c) 2015 TWC. All rights reserved.
//

import Foundation
import CoreData

class CurrentTech: NSManagedObject {

    @NSManaged var techId: String
    @NSManaged var siteId: String
    @NSManaged var isActive: String

}
