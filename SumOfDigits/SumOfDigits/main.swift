//
//  main.swift
//  SumOfDigits
//
//  Created by 영현 on 10/19/23.
//

import Foundation

func solution(_ n:Int) -> Int
{
    var answer: Int = 0
    var temp: Int = n
    
    while true {
        answer += temp%10
        temp /= 10
        if temp == 0{
            break
        }
    }
    
    return answer
}
