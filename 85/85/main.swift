//
//  main.swift
//  85
//
//  Created by 영현 on 1/5/24.
//

import Foundation

func solution(_ elements:[Int]) -> Int {
    var result: Set<Int> = []
    let temp = elements + elements[elements.startIndex..<elements.endIndex - 1]
    
    for i in 0..<elements.count {
        var num = 0
        for j in 0..<elements.count {
            num += temp[i+j]
            result.insert(num)
        }
    }
    
    return result.count
}
