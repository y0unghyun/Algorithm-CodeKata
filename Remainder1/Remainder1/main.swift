//
//  main.swift
//  Remainder1
//
//  Created by 영현 on 10/19/23.
//

import Foundation

func solution(_ n:Int) -> Int {
    var answer: Int = 0
    guard (n<3 && n>1000000) else {
        for i in 1...n {
            if n % i == 1 {
                answer = i
                break
            }
        }
    return answer
    }
    return 0
}
