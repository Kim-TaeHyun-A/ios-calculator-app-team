//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Eddy on 2022/03/15.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    var sut: CalculatorItemQueue!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = CalculatorItemQueue()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }

    func test_enque_one_element() {
        sut.enqueue("1")
        
        let result = sut.countNode

        XCTAssertEqual(result, 1)
    }
    
    func test_enque_two_elements() {
        sut.enqueue("1")
        sut.enqueue("2")
        
        let result = sut.countNode
        
        XCTAssertEqual(result, 2)
    }
    
    func test_enque_one_deque_one_element() {
        sut.enqueue("1")
//        sut.dequeue("1")
        
        let result = sut.countNode

        XCTAssertEqual(result, 0)
    }
    
    func test_all_reset() {
        sut.enqueue("1")
        sut.enqueue("2")
        sut.resetAll()
        
        let result = sut.countNode
        
        XCTAssertEqual(result, 0)
    }
    
    func test_check_if_isEmpty() {
        sut.enqueue("1")
        
        let result = sut.isEmpty
        
        XCTAssertFalse(result)
    }
    
    func test_check_enque_deque_isEmpty() {
        sut.enqueue("1")
        sut.enqueue("2")
//        sut.dequeue()
//        sut.dequeue()
        
        let result = sut.isEmpty
        
        XCTAssertTrue(result)
    }
}
