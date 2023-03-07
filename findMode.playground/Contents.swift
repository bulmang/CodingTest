//import Foundation
//
//func solution(_ array: [Int]) -> Int {
//
//    var myArray = [[Int]]()
//    var Array = [Int]()
//    var count = 0
//    var result = 0
//    var i = 0
//    var j = 0
//    var k = 0
//
//    while i < array.count  {
//        while j < array.count {
//            if array[i] == array[j] {
//                count += 1
//            }
//            print("[ i =" ,array[i],", j =",array[j],"]", "count = ", count);
//            j += 1
//        }
//        myArray.append([array[i],count])
//        i += 1
//        j = 0
//        print("myArray = ", myArray)
//        count = 0
//    }
//    while k < myArray.count - 1 {
//        if myArray[k][1] <= myArray[k+1][1] {
//            result = myArray[k+1][1]
//        } else {
//            result = myArray[k][1]
//        }
//        k += 1
//    }
//    return result
//}
//
//solution([1,4,2,4,4,4,5])
    
//func solution(_ array: [Int]) -> Int {
//    // 배열에서 각 원소의 등장 횟수를 저장할 딕셔너리 생성
//    var countDict: [Int: Int] = [:]
//    for element in array {
//        countDict[element, default: 0] += 1
//    }
//
//    // 딕셔너리에서 최빈값 찾기
//    var maxCount = 0
//    var mostFrequent = 0
//    for (key, value) in countDict {
//        if value > maxCount {
//            maxCount = value
//            mostFrequent = key
//        } else if value == maxCount {
//            mostFrequent = -1
//        }
//    }
//    return mostFrequent
//}

import Foundation

//func solution(_ array:[Int]) -> Int {
//
//    var maximum = 0
//    var index = 0
//    var myarray = [Int](repeating: 0, count: 1000)
//
//    for i in array {
//        myarray[i] += 1
//    }
//
//    for i in 0..<myarray.count{
//        if maximum < myarray[i] {
//            maximum = myarray[i]
//            index = i
//        }
//        else if maximum == myarray[i] {
//            index = -1
//        }
//    }
//    return index
//}



func solution(_ array:[Int]) -> Int {
    
    var maximum = 0
    var result = 0
    var myArray = [Int](repeating: 0, count: 1000) // 원소를 1000개를 가진 배열 생성
    
    for i in array {
        myArray[i] += 1 // 입력받은 수를 myArray 배열의 위치자리로 1씩 더해줌
    }
    // 0...array는 배열의 인덱스 범위를 0부터 배열의 마지막 인덱스까지 모두 포함
    // 0..<array는 배열의 인덱스 범위를 0부터 배열의 마지막 인덱스 바로 이전까지만 포함
    for i in 0..<myArray.count{
        if maximum < myArray[i] { // 비교하는 것을 줄이기 위해, maximum을 하나씩 비교
            maximum = myArray[i] // 비교하였을때 maimum보다 크면 myArra안에 있는 수를 maimum에 대입
            result = i // myArray 배열의 위치자리를 찾아서 넣어줌
        } else if maximum == myArray[i]{
            result = -1 // myArray의 원소가 같다면 max<myArray가 실행되지 않음, 같을때 -1 출력
        }
    }
    
    return result
}

solution([1,1,2,2,2,3,3,3,3])
