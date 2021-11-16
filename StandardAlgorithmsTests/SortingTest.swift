//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Ghosh, Ssnehnil (BJH) on 16/11/2021.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithUnsortedIntegerArrayReturnsSortedIntegerArray() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [(input: [3,5,1,2,9], expected: [1,2,3,5,9]), (input: [3,7,1,2,9], expected: [1,2,3,7,9]), (input: [], expected: [])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.bubbleSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
}
