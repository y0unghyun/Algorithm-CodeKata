//
//  main.swift
//  67
//
//  Created by 영현 on 11/29/23.
//

import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    
    var alphabets = "abcdefghijklmnopqrstuvwxyz"
    var alphaDict: [Character: Int] = [:], idx = 1, originIndex = 26
    var result = ""
    
    for ip in skip {
        alphabets = alphabets.replacingOccurrences(of: String(ip), with: "")
        originIndex -= 1
    }
    
    for alpha in alphabets {
        alphaDict[alpha] = idx
        idx += 1
    }
    
    for input in s {
        var sidx = 0
        sidx = alphaDict[input]! + index > originIndex ? alphaDict[input]! + index - originIndex : alphaDict[input]! + index
        if sidx > originIndex {
            sidx = sidx - originIndex
        }
        for (alphabet, idx) in alphaDict {
            if sidx == idx { result.append(String(alphabet)) }
        }
    }
    
    return result
}

print(solution("z", "bcdefhijkl", 20))
