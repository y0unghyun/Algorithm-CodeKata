//
//  main.swift
//  InnerProduct
//
//  Created by 영현 on 11/1/23.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var result = 0
    for i in 0..<a.count {
        result += a[i]*b[i]
    }
    return result
}
