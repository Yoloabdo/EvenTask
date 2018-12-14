//
//  CacheMock.swift
//  EvenTaskTests
//
//  Created by Ahmed Meguid on 12/13/18.
//  Copyright © 2018 Ahmed Meguid. All rights reserved.
//

import Foundation
@testable import EvenTask

class CacheMock: CacheProtocol {
    
    var dataStorage: [CachingKey: Any] = [:]
    
    func getObject<T>(_ object: T, key: CachingKey) -> T? {
        return dataStorage[key] as? T
    }
    
    func saveObject<T>(_ object: T, key: CachingKey) {
        dataStorage[key] = object
    }
    
    func removeObject(key: CachingKey) {
        dataStorage.removeValue(forKey: key)
    }
}
