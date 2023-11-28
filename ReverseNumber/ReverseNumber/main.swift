//
//  main.swift
//  ReverseNumber
//
//  Created by 영현 on 10/19/23.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
    var temp: Int64 = 0
    var i: Int64 = 0
    var array = Array<Int>()
    guard (n > 10000000000 && n <= 0) else {
        i = n
        repeat {
            temp = i % Int64(10)
            i /= 10
            array.append(Int(temp))
        } while i != 0
        return array
    }
    return []
}

print(solution(12349))
