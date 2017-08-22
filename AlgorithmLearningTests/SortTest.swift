//
//  SortTest.swift
//  AlgorithmLearningTests
//
//  Created by xiong on 2017/8/22.
//  Copyright © 2017年 xiong. All rights reserved.
//

import UIKit
@testable import AlgorithmLearning

class SortTest: NSObject {
    
    static func test() {
        var bubbleArray: [Int] = [1,3,5,4,2,6,9,7,8,10]
        BubbleSort.sort(array: &bubbleArray)
        print("bubbleSort: \(bubbleArray)")
        
        var quickArray: [Int] = [1,5,8,6,3,4,7,9,10,2]
        QuickSort.sort(array: &quickArray)
        print("quickSort: \(quickArray)")
    }
    
}
