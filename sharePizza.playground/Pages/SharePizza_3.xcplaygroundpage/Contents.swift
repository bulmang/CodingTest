import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    
    var result: Int
    
    guard 2...10 ~= slice && 1...100 ~= n else { return 0 } 
    
    result = n / slice
    
    if n % slice > 0 {
        result += 1
    }
    
    return result
}

solution(5,91)
