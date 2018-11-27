//
//  Character+CoreDataClass.swift
//  Arcana
//
//  Created by Reid, Jon Carl on 11/26/18.
//  Copyright © 2018 Reid, Jon Carl. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Character)
public class Character: NSManagedObject {

    static var dateFormatter: DateFormatter {
        let df = DateFormatter()
        df.dateFormat = "MM/dd/yyyy"
        return df
    }
}
