//
//  main.swift
//  59
//
//  Created by 영현 on 11/23/23.
//

import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var brushPoint = 0, currentBrushPoint = 0
    for point in section {
        if brushPoint == 0 {
            brushPoint += 1
            currentBrushPoint = point
        } else {
            if (currentBrushPoint + m) <= point  {
                brushPoint += 1
                currentBrushPoint = point
            }
        }
        
    }
    return brushPoint
}

print(solution(4, 1, [1,2,3,4]))
