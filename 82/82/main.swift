//
//  main.swift
//  82
//
//  Created by 영현 on 12/20/23.
//

func solution(_ n:Int) -> Int {
    // 멀리뛰는 방법이 피보나치 배열과 같음.
    
    var jump = [1, 2]
    
    if n < 3 {
        return jump[n-1]
    }
    
    for i in 2...n {
        jump.append((jump[i-2] + jump[i-1]) % 1234567)
    }
    return jump[n-1]
}

print(solution(6))
