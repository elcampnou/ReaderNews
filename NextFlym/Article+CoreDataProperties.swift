//
//  Article+CoreDataProperties.swift
//  NextFlym
//
//  Created by Elfassi Mounir on 1/3/16.
//  Copyright © 2016 Elfassi Mounir. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Article {

    @NSManaged var articleDesciption: String?
    @NSManaged var articleURL: String?
    @NSManaged var date: NSObject?
    @NSManaged var image: NSObject?
    @NSManaged var imageURL: String?
    @NSManaged var title: String?

}
