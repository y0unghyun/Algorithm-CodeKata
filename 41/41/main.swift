//
//  main.swift
//  41
//
//  Created by 영현 on 11/7/23.
//

func solution(_ s:String) -> String {
    var cnt = 0, ccnt = 0, answer: [Character] = []
    repeat {
        var char = Array(s)[Array(s).index(0, offsetBy: ccnt)]
        let temp = cnt % 2 == 0 ? Character(char.uppercased()) : Character(char.lowercased())
        if char == " " {
            answer.insert(char, at: answer.index(0, offsetBy: ccnt))
            cnt = 0
        } else {
            answer.insert(temp, at: answer.index(0, offsetBy: ccnt))
            cnt += 1
            
        }
        ccnt += 1
    } while ccnt < s.count
    return String(answer)
}

print(solution("try hello world"))
