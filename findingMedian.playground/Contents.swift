import Foundation

func solution(_ array:[Int]) -> Int {
    
    var sortedArray = [Int]() // 빈 배열 추가
    var sortedNumbers = array.sorted() // 배열 오름차순 변경, 내림차순의 경우 sorted(by:) 사용
    var result: Int
    
    sortedArray.append(contentsOf: sortedNumbers) //append는 하나의 요소만 추가, append(contentsOf:)는 다른 배열의 모든 요소 추가
    result = array.count / 2 // 중앙값 구하기

    return sortedArray[result]
}

solution([10,23,44,-6,0])
