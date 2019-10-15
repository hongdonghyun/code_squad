import Foundation

//func printGugu(dan:Int) {
//    for i in 1...9 {
//        print("\(dan) * \(i) = \(dan * i)")
//    }
//}


//printGugu(dan:1)


//typealias Point = (x:Int , y:Int)
//
//
//func distance (a : Point, b : Point) -> Double {
//    return 0.0
//}
//
//
//distance(a: (x:10,y:10),b:(x:20,y:20))

//
//1) 가로/세로 칸을 입력값으로 넘기면 가로*세로 크기의 사다리를
//만드는 makeLadder()함수를 작성하세요.
//사다리는 Bool 타입 2차원 배열로 표현하세요.
//사다리가 있으면 true , 없으면 false

func makeLadder (row:Int,col:Int) -> Array<Array<Bool>> {
    var ladders = Array<Array<Bool>>()
    for _ in 0..<row {
        var rowLadder = Array<Bool>()
        for _ in 0..<col {
            rowLadder.append(false)
        }
        ladders.append(rowLadder)
    }
    return ladders
}


func printLadder(_ ladders:[[Bool]]) {
    for row in ladders {
        for col in row {
            print(col ? "-":" ")
        }
        print("")
        }
    }
