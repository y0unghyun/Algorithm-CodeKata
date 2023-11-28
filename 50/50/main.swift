//
//  main.swift
//  50
//
//  Created by 영현 on 11/17/23.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var result: [Int] = [], temp = 0
    let arr = Array(s)
    for i in 0..<arr.count {
        temp = i
        var isExist = false
        
        while temp > 0 {
            temp -= 1
            if arr[temp] == arr[i] {
                isExist = true
                result.append(i - temp)
                break
            }
        }
        if isExist == false {
            result.append(-1)
        }
    }
    return result
}

print(solution("banana"))
