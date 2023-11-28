import Foundation

func solution(_ n:Int) -> Int {
    var sum: Int = 0
    var temp: Int = 0
    
    if n % 2 == 1 {
        temp = n - 1
        while temp != 0 {
            sum = sum + temp
            temp = temp - 2
        }
    }
    else {
        temp = n
        while temp != 0 {
            sum = sum + temp
            temp = temp - 2
        }
    }
    return sum
}

print(solution(10))
