//
//  main.swift
//  52
//
//  Created by 영현 on 11/20/23.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var remain = 0, result = 0, next = 0
//    result += (n / a) * b
//    remain = n % a
//    next = (n / a) * b + remain
    while next >= a {
        remain = next % a
        result += (next / a) * b
        next = (next / a) * b + remain
    }
    return result
}
 print(solution(3, 2, 20))
