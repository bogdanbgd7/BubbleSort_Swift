import UIKit

var arrayOne : [Int] = [ 2, 1, 8, 6, 981, 9, 12, 82, 89, 69, 212] //unsorted array

func bubbleSortWithBool (unsortedArray : inout [Int]) -> [Int] {

    var isSwapped = true

    while isSwapped == true {

        isSwapped = false

        for index in 1..<unsortedArray.count {
            if unsortedArray[index] < unsortedArray[index - 1]{
                unsortedArray.swapAt(index - 1, index)
                isSwapped = true
            }
        }

    }

    return unsortedArray


}

//--------------------------------------------------------------------------

func bubbleSortWithNonZeroSwapCounter (unsortedArray : inout [Int]) -> [Int] {
    
    var swapCounter = 0
    
    while swapCounter == 0 {
        
        swapCounter = -1
        
        for index in 1..<unsortedArray.count {
            if unsortedArray[index] < unsortedArray[index - 1]{
                unsortedArray.swapAt(index - 1, index)
                swapCounter = 0
            }
        }
        
    }
    
    return unsortedArray
    
    
}

print(bubbleSortWithNonZeroSwapCounter(unsortedArray: &arrayOne))
print(bubbleSortWithBool(unsortedArray: &arrayOne))
