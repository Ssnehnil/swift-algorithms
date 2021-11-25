//
//  Sorting.swift
//  StandardAlgorithmsNew
//
//  Created by Ghosh, Ssnehnil (BJH) on 16/11/2021.
//

import Foundation

class Sorting {
    func bubbleSort(_ data: [Int]) -> [Int] {
        var data = data
        if data.count == 0 {
            return []
        }
        let lastMarker = data.count - 1
        var listSorted = true
        while listSorted == true {
          listSorted = false
            for i in 0..<lastMarker {
            if data[i] > data[i+1] {
              let temp = data[i+1]
              data[i+1] = data[i]
              data[i] = temp
              listSorted = true
            }
          }
        }
        return data
    }
    
    func quickSort(_ data: [Int]) -> [Int] {
        let data = data
        let pivot = data[0] //Pivot
        var leftArray :[Int] = [] //Left array where smaller numbers will be
        var rightArray:[Int] = [] // Right array for the bigger numbers
        var returnArray:[Int] = [] // Final array which the left & right array will add to
        for i in 1..<data.count { // Loop to sort numbers into left or right array
          if data[i] < pivot {
            leftArray.append(data[i])
          } else {
            rightArray.append(data[i])
          }
        }
        if leftArray.count < 1 { //If statement to check if list is sorted or is unsorted
          return data
        } else {
          returnArray.append(contentsOf: quickSort(leftArray))
          returnArray.append(pivot)
          returnArray.append(contentsOf: quickSort(rightArray))
        }
        
        return returnArray
      }
}
