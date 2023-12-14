//
//  main.swift
//  78
//
//  Created by 영현 on 12/14/23.
//

func solution(_ n:Int) -> Int {
    var fibo: [Int] = [0, 1]
    
    for num in 2...n {
        let newFibo = (fibo[num - 2] % 1234567) + (fibo[num - 1] % 1234567)
        fibo.append(newFibo)
    }
    print(fibo)
    return fibo[n] % 1234567
}

print(solution(100000))
