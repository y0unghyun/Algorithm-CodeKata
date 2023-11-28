//
//  main.swift
//  51
//
//  Created by 영현 on 11/20/23.
//

import Foundation

func solution(_ food:[Int]) -> String {
    var foods = "", temp = 0, result = ""
    for i in food {
        for _ in 0..<i/2 {
            foods += "\(temp)"
        }
        temp += 1
    }
    result = "\(foods)" + "0" + "\(String(foods.reversed()))"
    return result
}


print(solution([1,3,4,6]))
