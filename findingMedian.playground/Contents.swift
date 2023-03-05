import Foundation

func solution(_ array:[Int]) -> Int {
    
    var sortedArray = [Int]()
    var sortedNumbers = array.sorted()
    var result: Int
    
    sortedArray.append(contentsOf: sortedNumbers)
    result = array.count / 2 

    return sortedArray[result]
}

solution([10,23,44,-6,0])
