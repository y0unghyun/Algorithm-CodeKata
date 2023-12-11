//
//  main.swift
//  75
//
//  Created by 영현 on 12/11/23.
//

func solution(_ s:String) -> String {
    var temp = [String](), input = Array(s), result: [Int] = []
    var count = 0
    
    for thing in input {
        if thing != " " {
            temp.append(String(thing))
            if count == input.count - 1 {
                result.append(Int(String(temp.joined()))!)
            }
        } else if thing == " " {
            result.append(Int(String(temp.joined()))!)
            temp = []
        }
        count += 1
    }
    result.sort(by: <)
    return "\(result.removeFirst()) \(result.removeLast())"
}

print(solution("-1 -2 -3 -4"))
