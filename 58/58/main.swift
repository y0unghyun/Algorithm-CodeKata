//
//  main.swift
//  58
//
//  Created by 영현 on 11/23/23.
//

import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0, temp = 0, isPrime = false
    for i in 0...nums.count-3 {
        for j in i+1...nums.count-2 {
            for k in j+1...nums.count-1 {
                temp =  nums[i] + nums[j] + nums[k]
                for x in 2..<temp {
                    if temp % x == 0 {
                        isPrime = false
                        break
                    } else { isPrime = true }
                }
                answer = isPrime ? answer + 1 : answer
            }
        }
    }
    return answer
}

print(solution([1, 2, 3, 4]))
