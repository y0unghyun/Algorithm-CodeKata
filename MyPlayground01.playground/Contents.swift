import UIKit

var greeting = "Hello, playground"

let cookieCount = 53
let message: String
switch cookieCount {
case 0:
    message = "없음..."
case 1..<5:
    message = "🍪 아주 조금 있음"
case 5..<12:
    message = "🍪 조금 있음"
case 12..<100:
    message = "🍪 꽤 있음 🍪"
case 100..<1000:
    message = "🍪🍪 많음 🍪🍪"
default:
    message = "🍪🍪🍪 엄청 많음 🍪🍪🍪"
}
print(message)
