//
//  main.swift
//  77
//
//  Created by 영현 on 12/13/23.
//

// [변환 횟수, 제거한 0의 갯수] 반환
import Foundation

func solution(_ s:String) -> [Int] {
    var numbers = s, countZero = 0, countReplace = 0, countOne = 0, temp = [String]()
    
    while numbers != "1" {
        for num in numbers {
            if num == "0" {
                countZero += 1
            } else if num == "1" {
                countOne += 1
            }
        }
        
        while countOne != 1 {
            temp.append(String(countOne % 2))
            countOne /= 2
            
            if countOne == 1 {
                temp.append(String(countOne))
            }
        }
        if temp == [] {
            numbers = "1"
        } else {
            numbers = temp.reversed().joined()
        }
        countReplace += 1
        countOne = 0
        temp = []
    }
    return [countReplace, countZero]
}

print(solution("01110"))
