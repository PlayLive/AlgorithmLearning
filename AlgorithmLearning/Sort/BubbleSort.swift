//
//  BubbleSort.swift
//  AlgorithmLearning
//
//  Created by xiong on 2017/8/22.
//  Copyright © 2017年 xiong. All rights reserved.
//

import UIKit

class BubbleSort: BaseSort {
    
    override class func sort(array: inout [Int]) {
        
        for _ in 0 ..< array.count {
            for j in 0 ..< array.count {
                if j < array.count-1 && array[j] > array[j+1] {
                    array.swapAt(j, j+1)
                }
            }
        }
        
    }
    
}
