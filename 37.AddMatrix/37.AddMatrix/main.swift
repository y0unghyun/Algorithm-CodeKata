//
//  main.swift
//  37.AddMatrix
//
//  Created by 영현 on 11/3/23.
//

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    for i in 0..<arr1.count {
        result.append([])
        for j in 0..<arr1[i].count {
            result[i].append(arr1[i][j] + arr2[i][j])
        }
    } 
    return result
}

print(solution([[1,2],[2,3]], [[3,4],[5,6]]))
