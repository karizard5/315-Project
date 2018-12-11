//
//  Skill+CoreDataProperties.swift
//  Arcana
//
//  Created by Gianatassio, Dominic Kanyo on 12/10/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//
//

import Foundation
import CoreData


extension Skill {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Skill> {
        return NSFetchRequest<Skill>(entityName: "Skill")
    }

    @NSManaged public var name: String?
    @NSManaged public var value: Int16
    @NSManaged public var characterProficiency: Character?

}
