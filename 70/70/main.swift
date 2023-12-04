//
//  main.swift
//  70
//
//  Created by 영현 on 12/4/23.
//

import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    
    var lux = 0, luy = 0, rdx = 0, rdy = 0
    
    var x = 0, y = 0, tempX = [Int](), tempY = [Int](), result = [Int]()
    
    for rows in wallpaper {
        y = 0
        for each in rows {
            if String(each) == "#" {
                tempX.append(x)
                tempY.append(y)
                y += 1
            } else { y += 1 }
        }
        x += 1
    }
    if tempX.count == 1 {
        lux = tempX[0]
        rdx = tempX[0] + 1
        luy = tempY[0]
        rdy = tempY[0] + 1
    } else {
        if let minX = tempX.min() {
            lux = minX
        } 
        if let maxX = tempX.max() {
            rdx = maxX + 1
        }
        if let minY = tempY.min() {
            luy = minY
        }
        if let maxY = tempY.max() {
            rdy = maxY + 1
        }
    }
    result = [lux, luy, rdx, rdy]
    return result
}

print(solution(["..........", ".....#....", "......##..", "...##.....", "....#....."]))
