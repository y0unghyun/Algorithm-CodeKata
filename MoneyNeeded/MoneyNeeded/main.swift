//
//  main.swift
//  MoneyNeeded
//
//  Created by 영현 on 11/2/23.
//

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var moneyNeed = 0
    for i in 1...count {
        moneyNeed += price * i
    }
    var answer: Int64 = Int64(money - moneyNeed)
    var result = answer < 0 ? -answer : 0
    return result
}


