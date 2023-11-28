//
//  main.swift
//  60
//
//  Created by 영현 on 11/23/23.
//

import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var total = limit < 1 ? power : 1
    if number < 2 { 
        total = limit < 1 ? power : 1
        return total
    }
    for i in 2...number {
        var measure = 0
        for j in 1...Int(sqrt(Float(i))) {
            if i % j == 0 {
                measure = j*j == i ? measure + 1 : measure + 2
            } else { continue }
        }
        total = measure > limit ? total + power : total + measure
    }
    return total
}



print(solution(4, 2, 1))
