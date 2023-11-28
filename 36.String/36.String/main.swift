//
//  main.swift
//  36.String
//
//  Created by 영현 on 11/3/23.
//

func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        for i in 0..<s.count {
            if Array(s)[i] >= "0" && Array(s)[i] <= "9" {
                continue
            } else {
                return false
            }
        }
    } else { return false }
    return true
}
