//
//  Skill+CoreDataProperties.swift
//  Arcana
//
//  Created by Reid, Jon Carl on 11/26/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//
//

import Foundation
import CoreData


extension Skill {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Skill> {
        return NSFetchRequest<Skill>(entityName: "Skill")
    }

    @NSManaged public var proficiency: String?
    @NSManaged public var characterProficiency: Character?

}
