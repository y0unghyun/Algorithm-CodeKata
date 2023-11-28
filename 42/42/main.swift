//
//  main.swift
//  42
//
//  Created by 영현 on 11/7/23.
//

import Foundation

func solution(_ number:[Int]) -> Int {
    var cnt = 0
    for i in 0..<number.count - 2 {
        for j in i + 1..<number.count - 1 {
            for k in j + 1..<number.count {
                if number[i] + number[j] + number[k] == 3 {
                    cnt += 1
                }
            }
        }
    }
    return cnt
}
