//
//  Character+CoreDataProperties.swift
//  Arcana
//
//  Created by Reid, Jon Carl on 11/26/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//
//

import Foundation
import CoreData


extension Character {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Character> {
        return NSFetchRequest<Character>(entityName: "Character")
    }

    @NSManaged public var charisma: Int16
    @NSManaged public var constituiton: Int16
    @NSManaged public var dexterity: Int16
    @NSManaged public var health: Int16
    @NSManaged public var intelligence: Int16
    @NSManaged public var level: Int16
    @NSManaged public var name: String?
    @NSManaged public var strength: Int16
    @NSManaged public var wisdom: Int16
    @NSManaged public var skillProficiency: Skill?

}
