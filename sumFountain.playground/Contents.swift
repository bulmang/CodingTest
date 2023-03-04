
import Foundation

func solution(_ numer1:Int, _ denom1:Int, _ numer2:Int, _ denom2:Int) -> [Int] {
    
    var numer: [Int] = [numer1,numer2]
    var denom: [Int] = [denom1,denom2]
    var sumNumer: [Int] = [0,0]
    var sumDenom: [Int] = [0,0]
    
    // 최소 공배수 구하기
    var lcm = denom1 * denom2 / gcd(denom[0], denom[1])
    
    // 분자 합 구하기
    sumNumer[0] = numer1 * (lcm/denom1) + numer2 * (lcm/denom2)
    sumDenom[0] = lcm
    
    //기약분수 구하기
    var gcdOfNumerAndDenom = gcd(sumNumer[0], sumDenom[0])
    sumNumer[0] /= gcdOfNumerAndDenom
    sumDenom[0] /= gcdOfNumerAndDenom
    
    return [sumNumer[0],sumDenom[0]]
    
}

func gcd(_ a:Int, _ b:Int) -> Int{
    return b == 0 ? a : gcd(b, a%b)
}

solution(14, 22, 15, 3)

