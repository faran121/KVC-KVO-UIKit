//
//  CarObserver.swift
//  KVO-KVC
//
//  Created by Maliks on 22/08/2023.
//

import Foundation

class Car: NSObject {
    @objc dynamic var mileage: Double = 0.0
}

class CarObserver: NSObject {
    var observedCar: Car
    
    init(car: Car) {
        observedCar = car
        super.init()
        
        observedCar.addObserver(self, forKeyPath: #keyPath(Car.mileage), options: [.new, .old], context: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == #keyPath(Car.mileage) {
            if let newValue = change?[.newKey] as? Double,
               let oldValue = change?[.oldKey] as? Double {
                print("Mileage Changed from \(oldValue) to \(newValue)")
            }
        }
    }
}


class Person: NSObject {
    @objc var name: String
    @objc var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        
        super.init()
    }
}

class UnitTest: NSObject {
    func add(x: Int, y: Int) -> Int {
        return x + y
    }
}
