import UIKit

var str = "Hello, playground"

// filter 1,2,3,4,5,6,7 by , 6 -> [1,2,3,4,5]
// map
//


func filterFunc(arr: [Double],closure:(Double) -> Bool) -> [Double] {
     var result = [Double]()
    
    for num in arr {
        if closure(num) {
            result.append(num)
        }
    }
    
    
    
    return result
}

var testArray:[Double] = [1,2,3,4,6,78,9,87,54,2,456]

print(filterFunc(arr:testArray , closure:{$0 > 10}))


