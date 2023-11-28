//
//  main.swift
//  57
//
//  Created by 영현 on 11/22/23.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var temp = 0, answer = answers, result: [Int] = [], score1 = 0, score2 = 0, score3 = 0, winner: [Int] = []
    let pick1 = [1,2,3,4,5], pick2 = [2,1,2,3,2,4,2,5], pick3 = [3,3,1,1,2,2,4,4,5,5]
    while answer.count > 0 {
        for i in 0..<answer.count {
            temp = answer.removeFirst()
            score1 = temp == pick1[i % 5] ? score1 + 1 : score1
            score2 = temp == pick2[i % 8] ? score2 + 1 : score2
            score3 = temp == pick3[i % 10] ? score3 + 1 : score3
        }
    }
    result = [score1, score2, score3]
    for i in 1...result.count {
        if result[i-1] == result.max() {
            winner.append(i)
        }
    }
    return winner.sorted()
}

print(solution([1,3,2,4,2]))

