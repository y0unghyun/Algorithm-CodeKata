//
//  main.swift
//  64
//
//  Created by 영현 on 11/27/23.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var result = n, arrLost = lost.sorted() , arrReserve = reserve.sorted()
    for l in 0..<arrLost.count {
        for r in 0..<arrReserve.count {
            if arrLost[l] == arrReserve[r] {
                arrReserve[r] = 100
                arrLost[l] = 100
            }
        }
    }

    for l in 0..<arrLost.count {
        if arrLost[l] != 100 {
            result -= 1
            for r in 0..<arrReserve.count {
                if arrLost[l] == arrReserve[r] - 1 || arrLost[l] == arrReserve[r] + 1 {
                    arrReserve[r] = 100
                    arrLost[l] = 100
                    result += 1
                }
            }
        }
    }
    return result
}

print(solution(5, [2, 3, 5], [2, 3, 4]))
