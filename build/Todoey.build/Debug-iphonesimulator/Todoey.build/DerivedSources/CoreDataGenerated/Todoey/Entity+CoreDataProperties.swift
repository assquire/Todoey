//
//  Entity+CoreDataProperties.swift
//  
//
//  Created by Askar on 27.02.2023.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity")
    }

    @NSManaged public var items: NSDecimalNumber?

}

extension Entity : Identifiable {

}
