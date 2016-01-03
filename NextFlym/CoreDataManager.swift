//
//  CoreDataManager.swift
//  NextFlym
//
//  Created by Elfassi Mounir on 1/3/16.
//  Copyright © 2016 Elfassi Mounir. All rights reserved.
//

import UIKit
import CoreData

class CoreDataManager: NSObject {

    
    func cacheFetchedArticles(articles: [ArticlePrototype]) {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let managedContext = appDelegate.managedObjectContext
        
        var managedArray = [Article]()
        
        // first, clear core data of any old articles
        let fetchRequest = NSFetchRequest(entityName:"Article")
        
        do {
            let fetchedResults = try managedContext.executeFetchRequest(fetchRequest) as? [NSManagedObject]
            
            if let managedObjects = fetchedResults as [NSManagedObject]! {
                for managedObject in managedObjects {
                    managedContext.deleteObject(managedObject)
                }
                
                try managedContext.save()
            }
        } catch {
            // catch both the fetchRequest and save errors
            print("Error: \(error)")
        }
        
        // now, save new articles
        
        for articleProto in articles {
            let managedArticle = Article(prototype: articleProto, inManagedObjectContext: managedContext)
            managedArray.append(managedArticle)
        }
        
        // save in core data
        do {
            try managedContext.save()
        } catch {
            print("Error: \(error)")
        }
        
        // try fetch
        // For debugging only
        //                let fetchRequest = NSFetchRequest(entityName:"Article")
        //
        //                do {
        //                    let fetchedResults = try managedContext.executeFetchRequest(fetchRequest) as? [NSManagedObject]
        //
        //                    print(fetchedResults)
        //                } catch {
        //                    print("Error: \(error)")
        //                }
    }
}
