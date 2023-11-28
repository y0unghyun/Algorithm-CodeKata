//
//  main.swift
//  55
//
//  Created by 영현 on 11/22/23.
//

import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var deck1 = cards1, deck2 = cards2, isPossible = false
    var temp1 = deck1.removeFirst(), temp2 = deck2.removeFirst()
    for x in goal {
        if x == temp1 {
            temp1 = deck1.isEmpty ? "" : deck1.removeFirst()
            if x == goal[goal.count - 1] { isPossible = true }
            continue
        } 
        else if x == temp2 {
            temp2 = deck2.isEmpty ? "" : deck2.removeFirst()
            if x == goal[goal.count - 1] { isPossible = true }
            continue
        }
        else { break }
    }
    if isPossible { return "Yes" } else { return "No" }
}

print(solution(["i", "water", "drink"], ["want", "to"], ["i", "want", "to", "drink", "water"]))
