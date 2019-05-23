//by:guanguandawang
//
import UIKit
//题目：不用临时变量怎么实现 swap(a, b)

func singleNumber(_ nums: [Int]) -> Int {
    var result : Int = 0
    for i in 0..<nums.count {
        result ^= nums[i]   //按位异或
    }
    return result
}
//测试
let arr = [3,3,2]
print("\(singleNumber(arr))")
let arr2 = [4,1,2,1,2]
print("\(singleNumber(arr2))")


//func singleNumber(_ nums: [Int]) -> Int {
//    for i in 0..<nums.count{
//        for j in 0..<nums.count{
//            if i != j && nums[i] == nums[j] {
//                break;
//            }
//            if j == nums.count-1{
//                return nums[i];
//            }
//        }
//    }
//    return -1
//}
