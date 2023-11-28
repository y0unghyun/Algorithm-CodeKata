//
//  main.swift
//  61
//
//  Created by 영현 on 11/23/23.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var count = 0, countZero = 0, result: [Int] = []
    for i in 0..<lottos.count {
        countZero = lottos[i] == 0 ? countZero + 1 : countZero
        for j in 0..<lottos.count {
            count = lottos[i] == win_nums[j] ? count + 1 : count
        }
    }
    result = [7 - (count + countZero), (7 - count)]
    for i in 0..<result.count {
        result[i] = result[i] > 5 ? 6 : result[i]
    }
    return result
}

print(solution([0, 0, 0, 0, 0, 0], [31, 10, 45, 1, 6, 19]))
