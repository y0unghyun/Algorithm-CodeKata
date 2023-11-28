//
//  main.swift
//  AddAndCount
//
//  Created by 영현 on 11/1/23.
//

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0
    for i in left...right {
        var count = 0
        for j in 1...i {
            if i % j == 0 {
                count+=1
            }
        }
        if count % 2 == 0 {
            result += i
        } else {
            result -= i
        }
    }
    return result
}

print(solution(2, 5))
