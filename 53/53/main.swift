//
//  main.swift
//  53
//
//  Created by 영현 on 11/21/23.
//

import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var rank: [Int] = [], result: [Int] = []
//    for i in 0..<k {
//        rank.append(score[i])
//        rank = rank.sorted()
//        result.append(rank[0])
//    }
//    for i in k..<score.count {
//        rank[0] = rank[0] < score[i] ? score[i] : rank[0]
//        rank = rank.sorted()
//        result.append(rank[0])
//    }
    for i in 0..<score.count {
        if i < k { rank.insert(score[i], at: 0) }
        else { if rank[0] < score[i] { rank.remove(at: 0)
            rank.insert(score[i], at: 0)
        } }
        rank.sort()
        result.append(rank[0])
    }
    return result
}

print(solution(3, [10, 100, 20, 150, 1, 100, 200]))
