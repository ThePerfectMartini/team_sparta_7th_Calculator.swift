//
//  공성표_과제_계산기.swift
//  
//
//  Created by t2023-m0078 on 2023/07/18.
//

import Foundation



func main(){
    var cal = Calculator()
    cal.execute(10, "+", 5)
    cal.execute(10, "-", 5)
    cal.execute(10, "*", 5)
    cal.execute(10, "/", 5)
}

class Calculator{
    init(){
        print("계산기 호출됨")
    }
    func execute(_ first:Double,_ ops:String, _ last:Double){
        switch ops {
        case "+":
            print(AddOpteration(first,last).answer)
        case "-":
            print(SubstractOpteration(first,last).answer)
        case "*":
            print(MultiplyOpteration(first,last).answer)
        case "/":
            print(DivideOpteration(first,last).answer)
        default:
            print("형식에 맞지 않음 : 오류")
        }
    }
    
}

protocol AbstractOperation{
    var frontNumber:Double { get }
    var endNumber:Double { get }
}

class Operations:AbstractOperation{
    var frontNumber: Double
    var endNumber: Double
        init(_ first:Double,_ last:Double){
            frontNumber = first
            endNumber = last
        }
}

class AddOpteration: Operations{
    var answer:Double {return frontNumber + endNumber}
}
class SubstractOpteration: Operations{
    var answer:Double {return frontNumber - endNumber}
}
class MultiplyOpteration: Operations{
    var answer:Double {return frontNumber * endNumber}
}
class DivideOpteration: Operations{
    var answer:Double {return frontNumber / endNumber}
}




main()

