//
//  Article.swift
//  NextFlym
//
//  Created by Elfassi Mounir on 1/3/16.
//  Copyright © 2016 Elfassi Mounir. All rights reserved.
//


import Foundation
import CoreData
import UIKit

class Article: NSManagedObject {

    convenience init(prototype: ArticlePrototype, inManagedObjectContext context: NSManagedObjectContext) {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let entity = NSEntityDescription.entityForName("Article", inManagedObjectContext: context)!
        
        self.init(entity: entity, insertIntoManagedObjectContext: appDelegate.managedObjectContext)
        
        self.title = prototype.title
        self.articleDesciption = prototype.description
        self.imageURL = prototype.imageURL
        self.date = prototype.date
        self.articleURL = prototype.articleURL
        
        // optional image
        if let image = prototype.image as UIImage! {
            self.image = image
        }
    }

    
    
    
    
}
