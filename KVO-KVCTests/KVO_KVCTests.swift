//
//  KVO_KVCTests.swift
//  KVO-KVCTests
//
//  Created by Maliks on 14/09/2023.
//

import XCTest
@testable import KVO_KVC

final class KVO_KVCTests: XCTestCase {
    
    func testAddFunction() {
        
        // Arrange
        let firstParam: Int = 10
        let secondParam: Int = 20
        let unitTestInstance = UnitTest()
        
        // Act
        let answer = unitTestInstance.add(x: firstParam, y: secondParam)
        
        // Assert
        XCTAssertEqual(answer, 30)
    }
}
