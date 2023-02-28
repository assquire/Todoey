//
//  DataManager.swift
//  Todoey
//
//  Created by Askar on 27.02.2023.
//

import Foundation
import UIKit

protocol DataManagerDelegate {
    func didUpdateModelList(with models: [Todoeyitem])
    func didFailWithError(error: Error)
}

struct DataManager {
    
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var delegate: DataManagerDelegate?
    
    static var shared = DataManager()
    
    func getAllItems() {
        do {
            let models = try context.fetch(Todoeyitem.fetchRequest())
            delegate?.didUpdateModelList(with: models)
        } catch {
            delegate?.didFailWithError(error: error)
        }
    }
    
    func createItem(with name: String) {
        let newItem = Todoeyitem(context: context)
        newItem.name = name
        newItem.createdAt = Date()
        do {
            try context.save()
            let models = try context.fetch(Todoeyitem.fetchRequest())
            delegate?.didUpdateModelList(with: models)
        } catch {
            print("Following error appeared: ", error)
        }
    }
    
    func deleteItem(item: Todoeyitem) {
        context.delete(item)
        do {
            try context.save()
            let models = try context.fetch(Todoeyitem.fetchRequest())
            delegate?.didUpdateModelList(with: models)
        } catch {
            print("Following error appeared: ", error)
        }
    }
    
    func updateItem(item: Todoeyitem, newName: String) {
        item.name = newName
        do {
            try context.save()
            let models = try context.fetch(Todoeyitem.fetchRequest())
            delegate?.didUpdateModelList(with: models)
        } catch {
            print("Following error appeared: ", error)
        }
    }
}
