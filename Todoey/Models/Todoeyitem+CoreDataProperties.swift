//
//  Todoeyitem+CoreDataProperties.swift
//  
//
//  Created by Askar on 27.02.2023.
//
//

import Foundation
import CoreData

extension Todoeyitem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Todoeyitem> {
        return NSFetchRequest<Todoeyitem>(entityName: "Todoeyitem")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var name: String?

}
