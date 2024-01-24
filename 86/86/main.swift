//
//  main.swift
//  86
//
//  Created by 영현 on 1/15/24.
//

import Foundation

func solution(_ citations:[Int]) -> Int {
    var sortedCitations = citations.sorted(by: <), result = 0
    
    for i in 0..<citations.count {
        var temp = 0, count = sortedCitations.filter({ $0 >= i }).count
        if count >= i {
            temp = i
            if temp == citations.count - 1 {
                temp = count == citations.count ? count : temp
            }
        }
        if temp > result {
            result = temp
        }
    }
    return result
}

print(solution([3,0,6,1,5]))
