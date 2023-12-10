//
//  main.swift
//  74
//
//  Created by 영현 on 12/10/23.
//

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    var reportDict: [String: Int] = [:], reportSet: Set<String> = [], mailedDict: [String : Int] = [:], result: [Int] = []
    
    for id in id_list {
        reportDict[id] = 0
        mailedDict[id] = 0
    }
    
    for member in report {
        reportSet.insert(member)
    } // 동일 인물이 동일 대상을 여러 번 신고한 것을 필터링할 수 있음.
    
    for member in reportSet {
        let subject = String(member.split(separator: " ")[1])
        reportDict[subject]! += 1
    }
    
    for member in reportSet {
        let reporter = String(member.split(separator: " ")[0])
        let subject = String(member.split(separator: " ")[1])
        
        if reportDict[subject]! >= k {
            mailedDict[reporter]! += 1
        }
    }
    
    for id in id_list {
        result.append(mailedDict[id]!)
    }
    
    return result
}

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))
