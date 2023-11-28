import Foundation

func solution(_ numbers:[Int]) -> Double {
    var sum: Double = 0
    var n: Double = 0
    for index in numbers {
        n += 1
        sum += Double(index)
    }
    return sum/n
}
