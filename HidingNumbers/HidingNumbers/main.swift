//
//  main.swift
//  HidingNumbers
//
//  Created by 영현 on 10/30/23.
//

import Foundation

func solution(_ phone_number:String) -> String {
    var char: [Character] = Array(phone_number)
    for i in 0..<phone_number.count - 4 {
        char[i] = "*";
    }
    return String(char)
}

/*
 func solution(_ phone_number:String) -> String {
     return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
 }
 */
