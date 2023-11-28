//
//  main.swift
//  63
//
//  Created by 영현 on 11/25/23.
//

import Foundation

//func solution(_ X:String, _ Y:String) -> String {
//    var numX: [Int] = [0,0,0,0,0,0,0,0,0,0], numY: [Int] = [0,0,0,0,0,0,0,0,0,0], result: [Int] = [], zeroCount: Int = 0
//    for i in 0...9 {
//        for x in X {
//            if Int(String(x)) == i {
//                numX[i] += 1
//            }
//        }
//        for y in Y {
//            if Int(String(y)) == i
//            {
//                numY[i] += 1
//            }
//        }
//    }
//    for i in 0..<numX.count {
//        if numX[i] == 0 || numY[i] == 0 {
//            continue
//        }
//        else {
//            var temp = numX[i] < numY[i] ? numX[i] : numY[i]
//            for _ in 0..<temp {
//                result.append(i)
//            }
//        }
//    }
//    for numResult in result {
//        if numResult == 0 { zeroCount += 1 }
//    }
//    if zeroCount == result.count && zeroCount >= 1 { result = [0] }
//    result = result.sorted(by: >)
//    if result == [] { return String(-1) }
//    else { return result.map {String($0)}.joined(separator: "") }
//}


//func solution(_ X:String, _ Y:String) -> String {
//    var numX: [Int] = [0,0,0,0,0,0,0,0,0,0], numY: [Int] = [0,0,0,0,0,0,0,0,0,0], result: [Int] = [], zeroCount: Int = 0
//    for i in 0...9 {
//        for x in X {
//            if Int(String(x)) == i {
//                numX[i] += 1
//            }
//        }
//        for y in Y {
//            if Int(String(y)) == i
//            {
//                numY[i] += 1
//            }
//        }
//        if numX[i] == 0 || numY[i] == 0 {
//            continue
//        }
//        else {
//            var temp = numX[i] < numY[i] ? numX[i] : numY[i]
////            if numX[i] >= numY[i] {
////                for _ in 0..<numY[i] {
////                    result.append(i)
////                }
////            } else {
////                for _ in 0..<numX[i] {
////                    result.append(i)
////                }
////            }
//            for _ in 0..<temp {
//                result.append(i)
//            }
//        }
//    }
//    for numResult in result {
//        if numResult == 0 { zeroCount += 1 }
//    }
//    if zeroCount == result.count && zeroCount >= 1 { result = [0] }
//    result = result.sorted(by: >)
//    if result == [] { return String(-1) }
//    else { return result.map {String($0)}.joined(separator: "") }
//}

func solution(_ X:String, _ Y:String) -> String {
    var numX: [Int] = [0,0,0,0,0,0,0,0,0,0], numY: [Int] = [0,0,0,0,0,0,0,0,0,0], result: [Int] = [], zeroCount: Int = 0
    for x in X {
        numX[Int(String(x))!] += 1
    }
    for y in Y {
        numY[Int(String(y))!] += 1

    }
    for i in 0..<numX.count {
        if numX[i] == 0 || numY[i] == 0 {
            continue
        }
        else {
            var temp = numX[i] < numY[i] ? numX[i] : numY[i]
            for _ in 0..<temp {
                result.append(i)
            }
        }
    }
    for numResult in result {
        if numResult == 0 { zeroCount += 1 }
    }
    if zeroCount == result.count && zeroCount >= 1 { result = [0] }
    result = result.sorted(by: >)
    if result == [] { return String(-1) }
    else { return result.map {String($0)}.joined(separator: "") }
}

print(solution("5525", "1255"))
