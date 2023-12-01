//
//  main.swift
//  68
//
//  Created by 영현 on 12/1/23.
//

//import Foundation
//
//func solution(_ ingredient:[Int]) -> Int {
//    var strIng = ingredient.map(String.init).joined()
//    var arrIng: [Int] = ingredient
//    var count = 0
//    
//    print(arrIng.contains([1,2,3,1]))
//    
//    while arrIng.contains([1,2,3,1]) {
//        for i in 0..<arrIng.count {
//            if arrIng.count > 4 {
//                if arrIng[i] == 1 && arrIng[i+1] == 2 && arrIng[i+2] == 3 && arrIng[i+3] == 1 {
//                    arrIng.removeSubrange(i...i+3)
//                    count += 1
//                    break
//                }
//            }
//        }
//    }
//    print(arrIng.contains([1,2,3,1]))
//    
//    while strIng.contains("1231") {
//        var before = strIng.count
//        strIng = strIng.replacingOccurrences(of: "1231", with: "")
//        var after = strIng.count
//
//        print(before, after)
//        count += (before - after) / 4
//    }
//    return count
//}
//
//print(solution([1, 1, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3, 1]))


//import Foundation
//
//func solution(_ ingredient:[Int]) -> Int {
//
//    let recipe: [Int] = [1,2,3,1]
//    var arrIng: [Int] = ingredient
//    var count = 0
//    
//    while arrIng.contains(recipe) {
//        for i in 0..<arrIng.count {
//            if arrIng[i] == 1 && arrIng[i+1] == 2 && arrIng[i+2] == 3 && arrIng[i+3] == 1 {
//                arrIng.removeSubrange(i...i+3)
//                count += 1
//                break
//            }
//        }
//    }
//    return count
//}

//import Foundation
//
//func solution(_ ingredient:[Int]) -> Int {
//
//    var strIng = ingredient.map(String.init).joined()
//    var arrIng: [Int] = ingredient
//    var count = 0
//    
//    print(arrIng.suffix(4))
//    while strIng.contains("1231") {
//        for i in 0..<arrIng.count {
//            if arrIng[i] == 1 && arrIng[i+1] == 2 && arrIng[i+2] == 3 && arrIng[i+3] == 1 {
//                arrIng.removeSubrange(i...i+3)
//                strIng = arrIng.map(String.init).joined()
//                count += 1
//                break
//            }
//        }
//    }
//    return count
//}

import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var sangSu: [Int] = [], burger = 0, recipe = [1,2,3,1]
    
    for ing in ingredient {
        sangSu.append(ing)
        if Array(sangSu.suffix(4)) == recipe {
            sangSu.removeLast(4)
            burger += 1
        }
    }
    
    return burger
}
