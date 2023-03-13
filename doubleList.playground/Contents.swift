import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result = [Int]() // result 빈 배열 선언
    for i in numbers {
        let doubleList = i * 2    // 배열 2배
        result.append(doubleList) // 리스트 추가
    }
    return result
}
