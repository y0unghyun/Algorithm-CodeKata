//
//  main.swift
//  45
//
//  Created by 영현 on 11/9/23.
//

func solution(_ s:String, _ n:Int) -> String {
    let upperCase = Array("abcdefghijklmnopqrstuvwxyz".uppercased())
    let lowerCase = Array("abcdefghijklmnopqrstuvwxyz")
    var result = ""
    for i in s {
        if upperCase.contains(i) {
            var upperIndex = upperCase.firstIndex(of: i)! + 1
            if upperIndex > 25 { upperIndex -= 26 }
            result.append(upperCase[upperIndex])
        }
        else if lowerCase.contains(i) {
            var lowerIndex = lowerCase.firstIndex(of: i)! + 1
            if lowerIndex > 25 { lowerIndex -= 26 }
            result.append(lowerCase[lowerIndex])
        }
        else { result.append(i) }
    }
    return result
}
