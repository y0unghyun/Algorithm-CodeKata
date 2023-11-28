//
//  main.swift
//  ReturnCenterCharacterOfString
//
//  Created by 영현 on 10/31/23.
//
import Foundation

func solution1(_ s:String) -> String {
    return s.count % 2 == 0 ? String(Array(s)[(s.count/2)-1]) + String(Array(s)[s.count/2]) : String(Array(s)[s.count/2])
}

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return zip(absolutes, signs).reduce(0) {
        $0 + ($1.1 ? $1.0 : -$1.0 )
    }
}
