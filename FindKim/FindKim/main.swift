//
//  main.swift
//  FindKim
//
//  Created by 영현 on 10/30/23.
//

import Foundation

func solution(_ seoul:[String]) -> String {
    for index in seoul {
        if index == "Kim" {
            return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
        }
    }
    return "김서방을 찾을 수 없습니다."
}

let seoul = ["Jane", "Kim"]

print(solution(seoul))
