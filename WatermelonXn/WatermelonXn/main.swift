//
//  main.swift
//  WatermelonXn
//
//  Created by 영현 on 11/1/23.
//

import Foundation

func solution(_ n:Int) -> String {
    var result: String = ""
    for i in 0..<n {
        var x = i % 2 == 0 ? "수" : "박"
        result = "\(result)\(x)"
    }
    return result
}

print(solution(9))
