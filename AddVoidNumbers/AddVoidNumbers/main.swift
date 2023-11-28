//
//  main.swift
//  AddVoidNumbers
//
//  Created by 영현 on 10/31/23.
//

import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sum = 0
    for i in 0..<numbers.count {
        for j in 0...9 {
            if j == numbers[i] {
                sum += j
            }
        }
    }
    return 45 - sum
}
