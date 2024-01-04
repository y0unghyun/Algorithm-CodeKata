//
//  main.swift
//  84
//
//  Created by 영현 on 12/22/23.
//

import Foundation

func solution(_ s:String) -> Int {
    var count = 0
    
    for offset in 0..<s.count {
        let startIndex = s.index(s.startIndex, offsetBy: offset)
        let inputString = s[startIndex..<s.endIndex] + s[s.startIndex..<startIndex]
        if isCorrect(String(inputString)) { count += 1}
    }
    return count
}

func isCorrect(_ str: String) -> Bool {
    var queue: [Character] = []
    
    for char in str {
        if queue.isEmpty {
            queue.append(char)
        } else {
            guard let last = queue.last else { continue }
            switch last {
            case "(": if char == ")" { queue.removeLast() } else { queue.append(char) }
            case "{": if char == "}" { queue.removeLast() } else { queue.append(char) }
            case "[": if char == "]" { queue.removeLast() } else { queue.append(char) }
            default: queue.append(char)
            }
        }
    }
    return queue.isEmpty
}
