//
//  main.swift
//  62
//
//  Created by 영현 on 11/23/23.
//

import Foundation

//func solution(_ babbling:[String]) -> Int {
//    let possiblePronounciation = ["aya", "ye", "woo", "ma"]
//    var babblings = babbling, result = 0, isSame = false, cnt = 0, trash = ""
//    for i in 0..<babblings.count {
//        for j in 0..<possiblePronounciation[i].count {
//            for k in 0..<Array(arrayLiteral: possiblePronounciation[i])[j].count {
//                if Array(babblings[i])[k] == Array(possiblePronounciation[j])[k] {
//                    cnt += 1
//                }
//                else if cnt == k {
//                    
//                }
//            }
//        }
//    }
//    return result
//}

//print(solution(["ayaye", "uuu", "yeye", "yemawoo", "ayaayaa"]))


//func solution(_ babbling: [String]) -> Int {
//    var pronounce = ["aya", "ye", "woo", "ma"], temp = " ", result = 0
//    for i in 0..<babbling.count {
//        temp = babbling[i]
//        for j in 0..<pronounce.count {
//            temp = temp.replacingOccurrences(of: pronounce[j], with: "\(j)")
//        }
//        if let answer = Int(temp) {
//            if !String(answer).contains("00") && !String(answer).contains("11") && !String(answer).contains("22") && !String(answer).contains("33") && String(answer) != "" {
//                result += 1
//            }
//        }
//    }
//    return result
//}

func solution(_ babbling:[String]) -> Int {
    var result = [String]()
    
    var count = 0
    
    for babble in babbling {
        result.append(
            babble.replacingOccurrences(of: "aya", with: "1")
                .replacingOccurrences(of: "ye", with: "2")
                .replacingOccurrences(of: "woo", with: "3")
                .replacingOccurrences(of: "ma", with: "4")
        )
    }
    for now in result{
        if let replacing = Int(now){
            if !String(replacing).contains("11") && !String(replacing).contains("22") && !String(replacing).contains("33") && !String(replacing).contains("44"){
                count += 1
            }
        }
    }
    return count
}

print(solution(["ayamayaa"]))
