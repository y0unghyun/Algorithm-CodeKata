//
//  main.swift
//  81
//
//  Created by 영현 on 12/19/23.
//

import Foundation

func solution(_ arr:[Int]) -> Int {
    func gcd(_ a: Int, _ b: Int) -> Int {
        let i = a % b
        if i != 0 { return gcd(b, i) }
        else { return b }
    }
    
    func lcm(_ a: Int, _ b: Int) -> Int {
        return a * b / gcd(a, b)
    }
    
    return arr.reduce(1){lcm($0, $1)}
}

print(solution([2,6,8,14]))
