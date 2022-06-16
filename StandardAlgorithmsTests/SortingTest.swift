//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Ghosh, Ssnehnil (BJH) on 16/11/2021.
//

import XCTest

class SortingTest: XCTestCase {
    
    func makeArray(number: Int) -> [Int] {
        var newArray: [Int] = []
        var done = 0
        while done < number {
            newArray.append(Int.random(in: 1...1000))
            done = done + 1
        }
        return newArray
    }

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
    
    func testQuickSortWithUnsortedIntegerArrayReturnsSortedIntegerArray() {
        //arrange
        let sorting = Sorting()
        
        let testCases = [(input: [3,5,1,2,9], expected: [1,2,3,5,9]), (input: [3,7,1,2,9], expected: [1,2,3,7,9]), (input: [], expected: [])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.quickSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBubbleSortPerformanceWith5() {
        let sorting = Sorting()
        let testArray = makeArray(number: 5)
        
        measure {
            _ = sorting.bubbleSort(testArray)
        }
    }
    
    func testBubbleSortPerformanceWith10() {
        let sorting = Sorting()
        let testArray = makeArray(number: 10)
        
        measure {
            _ = sorting.bubbleSort(testArray)
        }
    }
    
    func testBubbleSortPerformanceWith100() {
        let sorting = Sorting()
        let testArray = makeArray(number: 100)
        
        measure {
            _ = sorting.bubbleSort(testArray)
        }
    }
    
    func testQuickSortPerformanceWith5() {
        let sorting = Sorting()
        let testArray = makeArray(number: 5)
        
        measure {
            _ = sorting.quickSort(testArray)
        }
    }
    
    func testQuickSortPerformanceWith10() {
        let sorting = Sorting()
        let testArray = makeArray(number: 10)
        
        measure {
            _ = sorting.quickSort(testArray)
        }
    }
    
    func testQuickSortPerformanceWith100() {
        let sorting = Sorting()
        let testArray = makeArray(number: 100)
        
        measure {
            _ = sorting.quickSort(testArray)
        }
    }
}
