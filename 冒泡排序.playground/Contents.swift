//by:guanguandawang
//忽如一夜春风来，千树万树梨花开

import UIKit

//冒泡排序
func bubbleSort(arr:[Int])->[Int]{
    var sortArr = arr
    for i in 0..<sortArr.count - 1 {//已经排好的个数
        for j in 0..<sortArr.count - 1 - i {//刨去已经排好的，剩下的排序
            if(sortArr[j] > sortArr[j + 1]){// 相邻元素两两对比，元素交换 //升序排序
//          if(sortArr[j] < sortArr[j + 1]){// 降序排序
                let temp = sortArr[j]
                sortArr[j] = sortArr[j+1]
                sortArr[j+1] = temp
            }
        }
    }
    return sortArr
}

//测试
let arr = [5,2,1,7,6,4,3,2]
print("冒牌排序后：\(bubbleSort(arr: arr))")
