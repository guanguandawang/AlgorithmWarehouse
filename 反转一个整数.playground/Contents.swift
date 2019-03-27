import UIKit

//反转一个整数
func reversalInt(num : Int) -> Int{
    var x,y,sum : Int
    x = num % 10 //  1    2     3    4     5     6
    y = num / 10 //65432 6543  654   65    6     0
    sum = x      //  1    12   123  1234 12345 123456
    while y != 0 {
        x = y % 10
        y = y / 10
        sum = sum * 10 + x
    }
    return sum;
}

//测试
let num = 654321
let reversalNum = reversalInt(num: num)
print("\(reversalNum)")

let num2 = 6543210
let reversalNum2 = reversalInt(num: num2)
print("\(reversalNum2)")

let num3 = 8635402917
let reversalNum3 = reversalInt(num: num3)
print("\(reversalNum3)")
