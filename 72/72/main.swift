//
//  main.swift
//  72
//
//  Created by 영현 on 12/6/23.
//

import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var rank: [Int] = [], rankedPlayer: [String] = [], count = 0
    var ranking: [String : Int] = [:]
    
    for player in players {
        count += 1
        rank.append(count)
        rankedPlayer.append(player)
        ranking[rankedPlayer[count - 1]] = rank[count - 1]
    }
    
    for calling in callings {
        var tempPlayer = "", tempRank = 0
        
        tempRank = ranking[calling]! - 1
        tempPlayer = rankedPlayer[tempRank - 1]
        ranking[tempPlayer] = tempRank + 1
        rankedPlayer[tempRank] = tempPlayer
        rankedPlayer[tempRank - 1] = calling //  26~30 calling 선수 앞의 선수의 순위를 바꾸는 코드(rankedPlayer 배열, ranking 딕셔너리에서)
        
        ranking[calling] = ranking[calling]! - 1
    }
    
    let sortedRanking = ranking.sorted{ $0.1 < $1.1 }
    
    rankedPlayer = []
    
    for (playersName, index) in sortedRanking {
        rankedPlayer.append(playersName)
    }
    print(ranking)
    
    return rankedPlayer
}
