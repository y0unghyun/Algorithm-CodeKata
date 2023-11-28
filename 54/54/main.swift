//
//  main.swift
//  54
//
//  Created by 영현 on 11/21/23.
//

import Foundation

let date = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
// 월 0 화 1 수 2 목 3 금 4 토 5 일 6
let endOfMonth = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

func solution(_ a:Int, _ b:Int) -> String {
    var answer = ""
    if a == 1 { answer = date[(b + 4) % 7] }
    else if a == 2 { answer = date[b % 7] }
    else if a == 3 { answer = date[(b + 1) % 7] }
    else if a == 4 { answer = date[(b + 4) % 7] }
    else if a == 5 { answer = date[(b + 6) % 7] }
    else if a == 6 { answer = date[(b + 2) % 7] }
    else if a == 7 { answer = date[(b + 4) % 7] }
    else if a == 8 { answer = date[b % 7] }
    else if a == 9 { answer = date[(b + 3) % 7] }
    else if a == 10 { answer = date[(b + 5) % 7] }
    else if a == 11 { answer = date[(b + 1) % 7] }
    else if a == 12 { answer = date[(b + 3) % 7] }
    
    return answer
}

print(solution(5, 24))
