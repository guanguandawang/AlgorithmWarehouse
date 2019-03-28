//by:guanguandawang
//羌笛何须怨杨柳，春风不度玉门关

import UIKit

//选择排序
func selectSort(arr:[Int])->[Int]{
    var sortArr = arr
    for i in 0..<sortArr.count - 1 {//已经排好的个数
        var minIndex = i
        for j in i+1..<sortArr.count {//向后寻找最小值
            if sortArr[j] < sortArr[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {//做交换
            let temp = sortArr[i]
            sortArr[i] = sortArr[minIndex]
            sortArr[minIndex] = temp
        }
    }
    return sortArr
}

//测试
let arr = [3,5,32,4,2,128,0,1]
print("选择排序后：\(selectSort(arr: arr))")
