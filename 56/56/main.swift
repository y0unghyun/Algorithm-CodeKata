//
//  main.swift
//  56
//
//  Created by 영현 on 11/22/23.
//

import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var totalGain = 0
    var sortedScore = score.sorted(), temp: [Int] = []
    while sortedScore.count >= m {
        for _ in 0..<m {
            temp.append(sortedScore.removeLast())
        }
        totalGain += temp.removeLast() * m
        temp = []
    }
    return totalGain
}

print(solution(4, 3, [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2]))
