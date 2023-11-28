//
//  main.swift
//  HarshadNumber
//
//  Created by 영현 on 10/27/23.
//

import Foundation

func solution(_ x: Int) -> Bool {
    var temp: Int = x
    var sum: Int = 0
        repeat {
            sum += temp % 10
            temp /= 10
        } while temp >= 1
    if x % sum == 0 { return true }
    else { return false }
}

print(solution(11))
