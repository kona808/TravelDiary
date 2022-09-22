//
//  Log Controller.swift
//  TravelDiary
//
//  Created by Jacob Perez on 9/22/22.
//

import Foundation

class LogController {
    // MARK: - Singleton
    
        //Singleton: To ensure that we are interacting with the *SAME* instance of our -logs- array we created a singleton and will pass around this specific instacnce of our **LogController**
    static let sharedInstance = LogController()
    
    // MARK: Source of Truth ( single ) <-- because of declared singleton
    var logs: [Log] = []
    
    // MARK: - CRUD
    
    func create(title: String, address: String, body:String) {
        let log =  Log(title: title, address: address, body: body)
        logs.append(log)
    }
    
    func update(logToUpdate: Log, newTitle: String, newAddress: String, newBody: String) {
        logToUpdate.title = newTitle
        logToUpdate.address = newAddress
        logToUpdate.logDate = Date()
        logToUpdate.body = newBody
        
    }
    func delete(logToDelete: Log) {
        
    }
} // End of class
