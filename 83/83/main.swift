//
//  main.swift
//  83
//
//  Created by 영현 on 12/21/23.
//

import Foundation

// 담으려는 귤의 갯수 : k
func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var sortedTangerine = tangerine.sorted(by: <), tangerineSet = Set<Int>(), arr = [Int](), sale = 0, result = 0
    var rank = 0, temp = sortedTangerine[0]
    for tan in sortedTangerine {
        tangerineSet.insert(tan)
    }
    
    for _ in 0..<tangerineSet.count {
        arr.append(0)
    }
    
    for tan in sortedTangerine {
        if temp == tan {
            arr[rank] += 1
        } else {
            temp = tan
            rank += 1
            arr[rank] += 1
        }
    }
    
    arr = arr.sorted(by: >)
    
    for a in arr {
        sale += a
        result += 1
        if sale >= k {
            break
        }
    }
    return result
}

print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]    ))
