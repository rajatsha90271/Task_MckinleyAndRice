//
//  History+CoreDataProperties.swift
//  
//
//  Created by Rajat Sharma on 27/02/19.
//
//

import Foundation
import CoreData


extension History {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<History> {
        return NSFetchRequest<History>(entityName: "History")
    }

    @NSManaged public var date: NSDate?
    @NSManaged public var index: Double

}
