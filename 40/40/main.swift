//
//  main.swift
//  40
//
//  Created by 영현 on 11/6/23.
//

import Foundation

func solution(_ n:Int) -> Int {
    var temp: Int = n, result: [Int] = [], answer = 0, digit = 1
    repeat {
        result.append(temp % 3)
        temp /= 3
    } while temp > 0
    for _ in 1...result.count {
        answer += result.removeLast() * digit
        digit *= 3
    }
    return answer
}

print(solution(41))
