//
//  main.swift
//  38.RectangleStar
//
//  Created by 영현 on 11/3/23.
//

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

print("\(a) + \(b)")

for _ in 0..<b {
    for _ in 0..<a {
        print("*", terminator: "")
    }
    print("")
}
