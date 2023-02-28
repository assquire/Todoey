//
//  Todoeyitem+CoreDataProperties.swift
//  
//
//  Created by Askar on 27.02.2023.
//
//  This file was automatically generated and should not be edited.
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

extension Todoeyitem : Identifiable {

}
