//
//  ViewController.swift
//  KVO-KVC
//
//  Created by Maliks on 22/08/2023.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // KVO
        let car = Car()
        let observer = CarObserver(car: car) // This will trigger the observer's method
        
        car.mileage = 1000.0
        car.mileage = 500.0
        
        // KVC
        let person = Person(name: "Alice", age: 50)
        
        // Using KVC to access properties
        let personName = person.value(forKey: "name") as? String
        let personAge = person.value(forKey: "age") as? Int
        
        print("Name: \(personName ?? "N/A"), Age: \(personAge ?? -1)")
    }


}

