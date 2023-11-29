//
//  main.swift
//  66
//
//  Created by 영현 on 11/28/23.
//

import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    
    var keyDict: [Character: Int] = [:]
    var answer: [Int] = [], result = 0
    var targets = targets
    
    for key in keymap {
        var i = 1
        for k in key {
            if keyDict[k] == nil {
                keyDict[k] = i
            } else {
                keyDict[k] = keyDict[k]! <= i ? keyDict[k] : i
            }
            i += 1
        }
    }
    
    for (index, target) in targets.enumerated() {
        for char in target {
            if let count = keyDict[char] {
                result += count
            } else { 
                result = -1
                break
            }
        }
        answer.append(result)
        result = 0
    }
    
    return answer
}

print(solution(["AA"], ["B"]))
