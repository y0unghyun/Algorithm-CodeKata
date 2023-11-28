//
//  main.swift
//  44
//
//  Created by 영현 on 11/9/23.
//

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var h = 0, w = 0
    for i in sizes {
        var hmax = i[0] > i[1] ? i[0] : i[1]
        var wmax = i[0] < i[1] ? i[0] : i[1]
        h = h > hmax ? h : hmax
        w = w > wmax ? w : wmax
    }
    return w * h
}
