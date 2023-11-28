//
//  main.swift
//  StringToInt
//
//  Created by 영현 on 10/19/23.
//

import Foundation

func solution(_ s: String) -> Int {
    let startCharacter = s[s.startIndex]
    guard(s.count <= 5 && startCharacter == "0") else {
        var count: Int = s.count - 1
        var result: Int = 0
        for c in s {
            if c == "+" {
                count -= 1
            }
            else if c == "-" {
                count -= 1
            }
            else {
                if let val = Int(String(c)) {
                    var digit = 1
                    if count == 0 {
                        result += val
                        break
                    }
                    for _ in 1...count {
                        digit *= 10
                    }
                    result = result + (val*(digit))
                    count -= 1
                }
            }
        }
        if startCharacter == "-" {
            result *= -1
        }
        return result
    }
    return 0
}

print(solution("99273"))
