//
//  Smallcase+CoreDataProperties.swift
//  
//
//  Created by Rajat Sharma on 27/02/19.
//
//

import Foundation
import CoreData


extension Smallcase {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Smallcase> {
        return NSFetchRequest<Smallcase>(entityName: "Smallcase")
    }

    @NSManaged public var dailyReturns: Double
    @NSManaged public var image: NSData?
    @NSManaged public var index: String?
    @NSManaged public var monthlyReturns: Double
    @NSManaged public var rationale: String?
    @NSManaged public var scID: String?
    @NSManaged public var yearlyReturns: Double
    @NSManaged public var history: NSSet?

}

// MARK: Generated accessors for history
extension Smallcase {

    @objc(addHistoryObject:)
    @NSManaged public func addToHistory(_ value: History)

    @objc(removeHistoryObject:)
    @NSManaged public func removeFromHistory(_ value: History)

    @objc(addHistory:)
    @NSManaged public func addToHistory(_ values: NSSet)

    @objc(removeHistory:)
    @NSManaged public func removeFromHistory(_ values: NSSet)

}
