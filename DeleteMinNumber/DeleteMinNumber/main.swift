//
//  main.swift
//  DeleteMinNumber
//
//  Created by 영현 on 10/31/23.
//

func solution(_ arr:[Int]) -> [Int] {
    var arr1: [Int] = []
    let x = arr.min()
    for i in arr {
        if i != x {
            arr1.append(i)
        }
    }
    arr1 = arr1.isEmpty ? [-1] : arr1
    return arr1
}
