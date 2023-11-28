//
//  main.swift
//  39
//
//  Created by 영현 on 11/6/23.
//

func solution(_ n:Int, _ m:Int) -> [Int] {
    let x = n > m ? m : n, y = n > m ? n : m
    var min = 0, max = 0
    for i in 1...x {
        if (x % i == 0) && (y % i == 0) {
            min = i
        }
    }
    if (y % x == 0) { max = y } else { max = (x / min) * y }
    return [min, max]
}

print(solution(4, 257))
