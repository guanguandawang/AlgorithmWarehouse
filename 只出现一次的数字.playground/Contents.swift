//by:guanguandawang
//不思量自难忘
import UIKit
//题目：给定一个非空整数数组，除了某个元素只出现一次以外，其余每个元素均出现两次。找出那个只出现了一次的元素。
//说明：你的算法应该具有线性时间复杂度。 你可以不使用额外空间来实现吗？

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
