//by:guanguandawang
//酒沾衣缕，奈无语，语无奈
import UIKit

//插入排序
func insertSort(_ nums: [Int]) -> [Int] {
    var sortNums = nums
    for i in 1..<sortNums.count {
        var preIndex = i - 1
        while preIndex >= 0 && sortNums[preIndex] > sortNums[i]{
            sortNums[preIndex + 1] = sortNums[preIndex]
            preIndex = preIndex - 1
        }
        sortNums[preIndex + 1] = sortNums[i]
    }
    return sortNums
}




////测试
let arr = [3,3,2,3242,51235,1,9,4564]
print("\(insertSort(arr))")
//let arr2 = [4,1,2,1,2]
//print("\(singleNumber(arr2))")


