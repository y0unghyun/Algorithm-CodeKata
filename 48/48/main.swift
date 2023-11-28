//
//  main.swift
//  48
//
//  Created by 영현 on 11/16/23.
//

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    for rule in commands {
        var temp: [Int] = []
        var i = rule[0], j = rule[1], k = rule[2]
        for index in i...j {
            temp.append(array[index-1])
        }
        result.append(temp.sorted()[k-1])
    }
    return result
}


