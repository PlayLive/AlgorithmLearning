//
//  QuickSort.swift
//  AlgorithmLearning
//
//  Created by xiong on 2017/8/22.
//  Copyright © 2017年 xiong. All rights reserved.
//

import UIKit

class QuickSort: BaseSort {
    override class func sort(array: inout [Int]) {
        QuickSort.quickSort(array: &array, start: 0, end: array.count - 1)
    }
    
    static func quickSort(array: inout [Int], start: Int, end: Int) {
        if start >= end {
            return
        }
        let mid: Int = array[end]
        var left: Int = start
        var right: Int = end - 1
        while left < right {
            while array[left] < mid && left < right {
                left += 1
            }
            while array[right] > mid && left < right {
                right -= 1
            }
            array.swapAt(left, right)
        }
        if array[left] > array[end] {
            array.swapAt(left, end)
        } else {
            left += 1
        }
        if(left > 0){
            QuickSort.quickSort(array: &array, start: start, end: left-1)
        }
        QuickSort.quickSort(array: &array, start: left+1, end: end)
    }
}
