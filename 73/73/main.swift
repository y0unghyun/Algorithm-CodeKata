//
//  main.swift
//  73
//
//  Created by 영현 on 12/7/23.
//

import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let height = park.count, length = park[0].count
    var parkArr: [[String]] = []
    var currentX = 0, currentY = 0
    
    for subs in park {
        var substring: [String] = []
        for ob in subs {
            substring.append(String(ob))
        }
        parkArr.append(substring)
    }
    
    for arr in park {
        var found = false
        currentX = 0
        for obj in arr {
            if obj == "S"{
                found = true
                break
            }
            currentX += 1
        }
        if found {
            break
        }
        currentY += 1
    } // 시작 좌표를 찾음
    
    // 입력으로 받은 만큼 이동하는 알고리즘
    for route in routes {
        let op = route.split(separator: " ")[0], n = Int(route.split(separator: " ")[1])
        
        if op == "N" && currentY - n! >= 0 {
            var canMove = true
            for step in 1...n! {
                if parkArr[currentY - step][currentX] == "X" {
                    canMove = false
                }
            }
            if canMove {
                currentY -= n!
            }
        } else if op == "S" && currentY + n! < height {
            var canMove = true
            for step in 1...n! {
                if parkArr[currentY + step][currentX] == "X" {
                    canMove = false
                }
            }
            if canMove {
                currentY += n!
            }
        } else if op == "W" && currentX - n! >= 0 {
            var canMove = true
            for step in 1...n! {
                if parkArr[currentY][currentX - step] == "X" {
                    canMove = false
                }
            }
            if canMove {
                currentX -= n!
            }
        } else if op == "E" && currentX + n! < length {
            var canMove = true
            for step in 1...n! {
                if parkArr[currentY][currentX + step] == "X" {
                    canMove = false
                }
            }
            if canMove {
                currentX += n!
            }
        }
    }
    return [currentY, currentX]
}

print(solution(["SOOXO", "OOOXO", "OXOOO", "XOOOO"], ["E 2", "S 2", "W 2", "S 1", "W 1"]))

