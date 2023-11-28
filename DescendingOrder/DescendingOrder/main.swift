//
//  main.swift
//  DescreaseSort
//
//  Created by 영현 on 10/20/23.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    guard(n<1 && n>8000000000) else {
        var arr = [Character]()
        var result: String = ""
        var temp: Character
        for i in String(n) {
            arr.append(i)
        }
        for i in 0..<arr.count {
            for j in (i+1)..<arr.count {
                if arr[i] < arr[j] {
                    temp = arr[i]
                    arr[i] = arr[j]
                    arr[j] = temp
                }
            }
        }
        for i in arr {
            result.append(i)
        }
        return Int64(result)!
    }
    return 0
}

print(solution(123889209))

