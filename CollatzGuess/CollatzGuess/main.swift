//
//  main.swift
//  CollatzGuess
//
//  Created by 영현 on 10/27/23.
//

import Foundation

func solution(_ num:Int) -> Int {
    var temp: Int = num
    var count: Int = 0
    if (num > 0 && num < 8000000){
        if num == 1{ return 0 }
            repeat {
                var x : Int = temp % 2 == 0 ? temp / 2 : temp * 3 + 1
                temp = x
                count += 1
                if count == 500{
                    return -1
                }
            } while temp != 1
        }
        return count
}

print(solution(626331))
