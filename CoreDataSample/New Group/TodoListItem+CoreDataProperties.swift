//
//  TodoListItem+CoreDataProperties.swift
//  CoreDataSample
//
//  Created by 강치우 on 11/23/23.
//
//

import Foundation
import CoreData


extension TodoListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TodoListItem> {
        return NSFetchRequest<TodoListItem>(entityName: "TodoListItem")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var name: String?

}

extension TodoListItem : Identifiable {

}
