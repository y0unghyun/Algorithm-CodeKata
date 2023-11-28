//
//  main.swift
//  AddYingYang
//
//  Created by 영현 on 10/30/23.
//

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    for i in 0...absolutes.count - 1 {
        var x = signs[i] ? +absolutes[i] :  -absolutes[i]
        result += x
    }
    return result
}

let absolutes: [Int] = [4,7,12]
let signs: [Bool] = [true,false,true]

print(solution(absolutes, signs))
