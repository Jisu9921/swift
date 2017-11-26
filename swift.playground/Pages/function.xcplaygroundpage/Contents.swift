import Cocoa

func printGreeting() {
    print("Hello, playground")
}

printGreeting()

func printPersonalGreeting(name: String){
    print("Hello \(name), welcome to your playground")
}
printPersonalGreeting(name: "jisu")

func printPersonalGreeting(to name: String){
    print("Hello \(name), welcome to your playground")
}

printPersonalGreeting(to: "jisu")

func printPersonalGreetings(to names: String...){
    for name in names{
      print("Hello \(name), welcome to your playground")
    }
}

printPersonalGreetings(to: "jisu","choi")

func divisionDescriptionFor(numerator: Double,
                            denominatir: Double,
                            withPunctuation puctuation: String = "."){
    print("\(numerator) divided by \(denominatir) equals \(numerator/denominatir)\(puctuation)")
}

divisionDescriptionFor(numerator: 9.0, denominatir: 3.0)
divisionDescriptionFor(numerator: 9.0, denominatir: 3.0, withPunctuation: "!")

var error = "The requests failed : "
func appendErrorCode(_ code: Int, toErrorString errorString: inout String){
    if code == 400{
        errorString += " bad request."
    }
}

appendErrorCode(400, toErrorString: &error)
print(error)

func divisionDescriptionFor2(numerator: Double,
                            denominatir: Double,
                            withPunctuation puctuation: String = ".") -> String{
    return "\(numerator) divided by \(denominatir) equals \(numerator/denominatir)\(puctuation)"
}

print(divisionDescriptionFor2(numerator: 9.0, denominatir: 3.0))

func areaOfTriangleWith(base: Double, height: Double) -> Double{
    let numerator = base * height
    func divide() -> Double{
        return numerator / 2
    }
    return divide()
}

areaOfTriangleWith(base: 3.0, height: 5.0)

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]){
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers{
        if number % 2 == 0{
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

let aBunchOfNumbers = [1,3,4,7,10]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("the even numbers are: \(theSortedNumbers.evens) , the odd numbers are: \(theSortedNumbers.odds)")

func grabMiddleName(fromFullName name: (String, String?, String)) -> String?{
    return name.1
}

let middleName = grabMiddleName(fromFullName: ("Choi","nil","jisu"))
if let theName = middleName{
    print(theName)
}

func greetByMiddleName(fromFullName name: (first: String,middle: String?,last: String)){
    guard let middleName = name.middle else{
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}

greetByMiddleName(fromFullName: ("Matt","Danger","Mathias"))

let evenOddFunction: ([Int]) -> ([Int], [Int]) = sortedEvenOddNumbers

evenOddFunction([1,2,3])

