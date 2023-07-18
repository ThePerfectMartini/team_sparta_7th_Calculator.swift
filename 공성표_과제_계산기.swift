func main(){
    var cal = Calculator()
    cal.execute(10, "+", 5)
    cal.execute(10, "-", 5)
    cal.execute(10, "*", 5)
    cal.execute(10, "/", 5)
    cal.execute(10, "ㅋㅋ", 5)
}

class Calculator{
    init(){
        print("계산기 호출됨")
    }
    func execute(_ first:Double,_ ops:String, _ last:Double){
        switch ops {
        case "+":
            print(AddOpteration(first,last).calculate())
        case "-":
            print(SubstractOpteration(first,last).calculate())
        case "*":
            print(MultiplyOpteration(first,last).calculate())
        case "/":
            print(DivideOpteration(first,last).calculate())
        default:
            print("형식에 맞지 않음 : 오류")
        }
    }
}



protocol AbstractOperation{
    var frontNumber:Double { get }
    var endNumber:Double { get }
    init(_ first:Double,_ last:Double)
    func calculate() -> Double

}

class AddOpteration: AbstractOperation{
    var frontNumber: Double
    var endNumber: Double
    required init(_ first:Double,_ last:Double){
        frontNumber = first
        endNumber = last
    }
    func calculate() -> Double {
        return frontNumber + endNumber
    }
}
class SubstractOpteration: AbstractOperation{
    var frontNumber: Double
    var endNumber: Double
    required init(_ first:Double,_ last:Double){
        frontNumber = first
        endNumber = last
    }
    func calculate() -> Double {
        return frontNumber - endNumber
    }
}
class MultiplyOpteration: AbstractOperation{
    var frontNumber: Double
    var endNumber: Double
    required init(_ first:Double,_ last:Double){
        frontNumber = first
        endNumber = last
    }
    func calculate() -> Double {
        return frontNumber * endNumber
    }
}
class DivideOpteration: AbstractOperation{
    var frontNumber: Double
    var endNumber: Double
    required init(_ first:Double,_ last:Double){
        frontNumber = first
        endNumber = last
    }
    func calculate() -> Double {
        return frontNumber / endNumber
    }
}




main()

