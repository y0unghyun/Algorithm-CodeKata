//
//  main.swift
//  46
//
//  Created by 영현 on 11/10/23.
//

import Foundation

func solution(_ s:String) -> Int {
    var result = s
    let engNum = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    for i in 0..<engNum.count {
        result = result.description.replacingOccurrences(of: engNum[i], with: String(i))
    }
    return Int(result)!
}
