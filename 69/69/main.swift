//
//  main.swift
//  69
//
//  Created by 영현 on 12/2/23.
//

import Foundation

"""
라이언 튜브 R T
콘 프로도 C F
제이지 무지 J M
어피치 네오 A N
"""

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var surveyResult: [Character: Int] = ["R" : 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
    var result: [String] = []
    for i in 0..<survey.count {
        var first: Character = Array(survey[i])[0], second: Character = Array(survey[i])[1]
        switch choices[i] {
        case 1:
            surveyResult[first]! += 3
        case 2:
            surveyResult[first]! += 2
        case 3:
            surveyResult[first]! += 1
        case 4:
            break
        case 5:
            surveyResult[second]! += 1
        case 6:
            surveyResult[second]! += 2
        case 7:
            surveyResult[second]! += 3
        default:
            break
        }
    }
    if surveyResult["R"]! >= surveyResult["T"]! {
        result.append("R")
    } else {
        result.append("T")
    }
    
    if surveyResult["C"]! >= surveyResult["F"]! {
        result.append("C")
    } else {
        result.append("F")
    }
    
    if surveyResult["J"]! >= surveyResult["M"]! {
        result.append("J")
    } else {
        result.append("M")
    }
    
    if surveyResult["A"]! >= surveyResult["N"]! {
        result.append("A")
    } else {
        result.append("N")
    }
    
    return result.joined()
}

print(solution(["AN", "CF", "MJ", "RT", "NA"], [5, 3, 2, 7, 5]))
