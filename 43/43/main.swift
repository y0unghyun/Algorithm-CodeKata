//
//  main.swift
//  43
//
//  Created by 영현 on 11/7/23.
//

import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0, len = p.count
    for i in 0..<t.count - len + 1 {
        let startIndex = t.index(t.startIndex, offsetBy: i)
        let endIndex = t.index(t.startIndex, offsetBy: i + len - 1)
        let range = startIndex...endIndex
        
        if Int(t[range])! <= Int(p)! {
            result += 1
        }
    }
    return result
}


print(solution("3141592", "271"))
