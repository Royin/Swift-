//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// ---- 函数 Functions ----

// -- 函数的定义与调用  Defining and Calling Functions

func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
}

print(sayHello("Anna"))
print(sayHello("Brian"))

func sayHelloAgain(personName: String) -> String {
    return "Hello again, " + personName + "!"
}
print(sayHelloAgain("Anna"))



// -- 函数参数与返回值 Function Parameters and Return Values


// -- 无参函数  Functions Without Parameters

func sayHelloWord() -> String {
    return "hello, world"
}
print(sayHelloWord())


// -- 多参数函数 Functions With Multiple Parameters

func sayHello(personName: String, alredyGreeted: Bool) ->String {
    if alredyGreeted {
        return sayHelloAgain(personName)
    } else {
        return sayHelloAgain(personName)
    }
}
print(sayHello("Tim", alredyGreeted: true))


// -- 无返回值函数 Functions Without Return Values

func sayGoodBye(personName: String) {
    print("GoodBye, \(personName)")
}
sayGoodBye("Dave")      // 注意其实返回了Void,一个空的元组

func printAndCount(stringToPrint: String) -> Int {
    print(stringToPrint)
    return stringToPrint.characters.count
}
func printWithoutCounting(stringToPrint: String) {
    printAndCount(stringToPrint)
}
printAndCount("hello, world")
printWithoutCounting("hello, world")    // 第2个函数调用第1个函数，返回值不会被用到，函数的返回值可以被忽略


// -- 多重返回值函数 Functions with Multiple Return Values

func minMax(array:[Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax([8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)") // bounds元组的成员名已在函数返回类型中指定


// -- 可选元组返回类型 Optional Tuple Return Types

func minMax2(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[0..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax2([8, -6, 2, 109, 3, 71]) {
    print("min is \(bounds.min) and max is \(bounds.max)")
}



// -- 函数参数名称 Founction Parameters Names

func someFunctions(firstParameterName: Int, secondParameterName: Int) {
    
}

someFunctions(1, secondParameterName: 2) // 一般情况下，第一个参数省略其外部参数名，第二个及随后的参数使用局部参数名作为外部参数名



// -- 指定外部参数名 Specifying External Parameter Names

func someFunction(externalParameterName localParameterName: Int) {
    // 外部参数用于被调用，局部参数名用于函数内部。局部参数名必须独一无二。
}

func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)"
}
print(sayHello(to: "Bill", and: "Ted"))



// -- 忽略外部参数名 Omitting External Parameter Names

func someFunction(firstParameterName: Int, _ secondParameterName:Int) {
    // 不想为第二个及以后的参数设置外部参数名，用下划线_代替一个明确的参数名
}
someFunction(1, 2)



// -- 默认参数值 Default Parameter Values

func someFunction(parameterWithDefault: Int = 12) {
    // 给函数参数设置默认值
}
someFunction(6)
someFunction()



// -- 可变参数 Variadic Parameters

func arithmeticMean(numbers: Double...) -> Double {
    // 可变参数在类型后加...  参数在函数体内可以当成一个数组  一个函数最多只能有一个可变参数
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)



// -- 输入输出参数 In-Out Parameters
/*
    函数参数默认是常量，不可更改。
    如要修改参数值，并且想要这些修改在函数调用结束后仍存在，应把参数定义为输入处处参数
    输入输出参数不能有默认值，可变参数不能用inout标记
*/

func swapTwoInts(inout a: Int, inout _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")



// -- 函数类型  Function Types

func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(a: Int, _ b: Int) -> Int {
    return a * b
}  // 函数类型 （Int, Int) -> Int

func printHelloWorld() {
    print("hello, world")
}  // 函数类型  () -> Void



// -- 使用函数类型 Using Function Types

var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")

mathFunction = multiplyTwoInts // 相同匹配类型的不同函数可以被赋值给同一个变量
print("Result: \(mathFunction(2, 3))")

let anotherMathFunction = addTwoInts  // 让Swift来推断常量或变量的类型



// -- 函数类型作为参数类型 Function Types as Parameter Types

func printMathResult(mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5) // 提供一个函数给被调用的函数使用。将函数的一部分实现留给函数的调用者来提供



// -- 函数类型作为返回类型 Function Type as Return Types

func stepForward(input: Int) -> Int {
    return input + 1
}

func stepBackward(input: Int) -> Int {
    return input - 1
}







