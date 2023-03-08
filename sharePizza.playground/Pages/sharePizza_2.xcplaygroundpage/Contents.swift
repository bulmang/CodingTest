//func solution(_ n:Int) -> Int {
//
//    let pizzaPieces = 6
//    let totalPieces = n * pizzaPieces
//    var result = 0
//
//    if n == 6 {
//       result = 1
//    }
//    else if n % 2  == 0 {
//        result = pizzaPieces * n / 2
//        result = result / 6
//    } else {
//        result = n
//    }
//    return result
//}
//
//solution(6)
////머쓱이네 피자가게는 피자를 여섯 조각으로 잘라 줍니다. 피자를 나눠먹을 사람의 수 n이 매개변수로 주어질 때, n명이 주문한 피자를 남기지 않고 모두 같은 수의 피자 조각을 먹어야 한다면 최소 몇 판을 시켜야 하는지를 return 하도록 solution 함수를 완성해보세요.
func solution(_ n:Int) -> Int {
    let pizzaPieces = 6
    for i in 1...n{
        if pizzaPieces * i % n == 0{
            return i
        }
    }
    return 0
}