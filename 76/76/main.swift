//
//  main.swift
//  76
//
//  Created by 영현 on 12/12/23.
//

func solution(_ s:String) -> String {
    var input = Array(s), count = 0, temp = [String]()
    
    for thing in input {
        if Int(String(thing)) == nil {
//            if count == 0 {
            if count == 0 && thing != " " {
                temp.append(thing.uppercased())
                count += 1
            } else if thing == " " {
                temp.append(" ")
                count = 0
            } else {
                temp.append(thing.lowercased())
            }
        } else if let intThing = Int(String(thing)) {
            temp.append(String(intThing))
            count += 1
        }
    }
    return temp.joined()
}

print(solution("   a 123e "))
