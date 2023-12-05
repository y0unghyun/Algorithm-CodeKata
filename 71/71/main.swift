//
//  main.swift
//  71
//
//  Created by 영현 on 12/5/23.
//

import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    
    var result: [Int] = [], privacyCount: Int = 1
    for term in terms {
        var splitedTerm = term.split(separator: " ")
        let duration = Double(splitedTerm[1])! * Double(28)
        
        for privacy in privacies {
            var splitedPrivacy = privacy.split(separator: " ")
            
            if splitedTerm[0] == splitedPrivacy[1] {
                let yearGap = Double(today.split(separator: ".")[0])! - Double(splitedPrivacy[0].split(separator: ".")[0])!
                let monthGap = Double(today.split(separator: ".")[1])! - Double(splitedPrivacy[0].split(separator: ".")[1])!
                let dateGap = Double(today.split(separator: ".")[2])! - Double(splitedPrivacy[0].split(separator: ".")[2])!
                
                let totalGap = (yearGap * 12 * 28) + (monthGap * 28) + dateGap
                if duration < totalGap {
                    result.append(privacyCount)
                    privacyCount += 1
                }
                else { privacyCount += 1}
            } else { privacyCount += 1}
            
            
        }
        privacyCount = 1
        
    }
    
    return result.sorted()
}

print(solution("2020.01.01", ["Z 3", "D 5"], ["2019.01.01 D", "2019.11.15 Z", "2019.08.02 D", "2019.07.01 D", "2018.12.28 Z"]))



