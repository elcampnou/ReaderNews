//
//  NetworkManager.swift
//  NextFlym
//
//  Created by Elfassi Mounir on 1/2/16.
//  Copyright © 2016 Elfassi Mounir. All rights reserved.
//


import UIKit

enum NetworkError: ErrorType {
    case NetworkFailure
    case ParsingError
    case UnknownError
    
    var localizedDescription: String {
        switch self {
        case .NetworkFailure:
            return "No Network Connection"
            
        case .ParsingError:
            return "Data Parsing Error"
            
        default:
            return "Unknown Error"
        }
    }
}

class NetworkManager: NSObject {

    // The intital entry point for fetching articles
    // This method takes make a network request to the Google News RSS feed and returns an NSData object and/or a custom NetworkError ErrorType object I have defined above
    
    func fetchAllArticlesWithCompletion(completion: (data: AnyObject?, error: ErrorType?) -> Void) {
        
        let request = NSURLRequest(URL: NSURL(string: kGoogleNewsRSSURL)!)
        
        NSURLSession.sharedSession().dataTaskWithRequest(request) { (data, response, error) -> Void in

            
    
        
    
    
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}






