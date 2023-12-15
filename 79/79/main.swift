//
//  main.swift
//  79
//
//  Created by 영현 on 12/14/23.
//

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let total = brown + yellow
    var x = 0, y = 0, result = [Int]()
    for i in 1...total {
        if total % i == 0 {
            x = i
            y = total / i
            
            if (x - 2) * (y - 2) == yellow {
                break
            }
        }
    }
    result = [x, y]
    return result.sorted(by: >)
}

print(solution(4004,999999))
