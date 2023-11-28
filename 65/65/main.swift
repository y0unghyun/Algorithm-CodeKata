//
//  main.swift
//  65
//
//  Created by 영현 on 11/28/23.
//

import Foundation

func solution(_ s:String) -> Int {
    var input = Array(s), cnt = 0, ccnt = 0, result = 0, temp = ""
    for _ in 0..<input.count {
        
        if cnt == 0 || temp ==  {
            temp = String(input.removeFirst())
            cnt += 1
        } 
        else if String(input.removeFirst()) != temp {
            ccnt += 1
            if cnt == ccnt {
                cnt = 0
                ccnt = 0
                result += 1
            }
        } 
        else if input == [] {
            result += 1
            break
        }
        result += 1
    }
    
    return result
}

print(solution("abracadabra"))
