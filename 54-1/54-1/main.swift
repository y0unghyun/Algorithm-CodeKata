//
//  main.swift
//  54-1
//
//  Created by 영현 on 11/21/23.
//

import Foundation

let date = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
// 월 0 화 1 수 2 목 3 금 4 토 5 일 6
let endOfMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

func solution(_ a: Int, _ b: Int) -> String {
    var past = 0
    for i in 0..<a-1 {
        past += endOfMonth[i]
        print(past)
    }
    var answer = date[((past + b + 4) % 7)]
    return answer
}

print(solution(5, 24))
