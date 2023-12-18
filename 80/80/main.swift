//
//  main.swift
//  80
//
//  Created by 영현 on 12/18/23.
//

import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var answer = 0, numA = a, numB = b
    
    while numA != numB {
        numA = (numA%2==1 ? (numA+1)/2 : numA/2)
        numB = (numB%2==1 ? (numB+1)/2 : numB/2)
        
        answer += 1
    }
    return answer
}

print(solution(8, 4, 7))
