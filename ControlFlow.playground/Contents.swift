//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// ----- 控制流 Control Flow ----



// For-In 循环  For-In Loops

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {        // 使用 _ 代替循环变量
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}



// While 循环  While Loops

// ---- While
/*
游戏的规则如下：

游戏盘面包括 25 个方格，游戏目标是达到或者超过第 25 个方格；
每一轮，你通过掷一个 6 边的骰子来确定你移动方块的步数，移动的路线由上图中横向的虚线所示；
如果在某轮结束，你移动到了梯子的底部，可以顺着梯子爬上去；
如果在某轮结束，你移动到了蛇的头部，你会顺着蛇的身体滑下去。
*/

let finalSquare = 25    // 格子
var board = [Int](count: finalSquare + 1, repeatedValue: 0) // 数组 26个0

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02  // 梯子
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08  // 蛇

var square = 0      // 游戏者从0开始掷骰子
var diceRoll = 0    // 骰子
while square < finalSquare {
    // 掷骰子
    if ++diceRoll == 7 { diceRoll = 1}
    // 根据点数移动
    square += diceRoll
    if square < board.count {
        // 如果玩家还在棋盘上，顺着梯子爬上去或者顺着蛇滑下去
        square += board[square]
    }
}
print("Game over")



// ---- Repeat-While 

// 先执行一次循环代码块，再判断循环条件  类似do-while

square = 0

repeat {
    // 顺着梯子爬上去或者顺着蛇滑下来
    square += board[square]
    // 掷骰子
    if ++diceRoll == 7 { diceRoll = 1}
    // 根据点数移动
    square += diceRoll
} while square < finalSquare
print("Game over")



// -- 条件语句 Conditional Statements

// If

var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 30 {      // if 判断
    print("It's very cold. Consider wearing a scarf.")
}

temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {      // if-else 条件二选一
    print("It's very cold. Wear a t-shirt.")
} else {
    print("It's not that cold. Wear a t-shirt")
}

temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
}                                       // else 可选


// -- Switch

// 把某个值与一个或若干个相同类型值作比较

/*
switch some value to consider {
case value 1:
respond to value 1
case value 2,
value 3:
respond to value 2 or 3
default:
otherwise, do something else
}
*/

let someCharacter: Character = "e"
switch someCharacter {
    case "a", "e", "i", "o", "u":
        print("\(someCharacter) is a vowel")
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        print("\(someCharacter) is a consonant")
    default:
        print("\(someCharacter) is not a vowel or a consonant")
}

// 不存在隐式贯穿

/*
    只执行一个case, 不需要写 break
    case x: 后面必须包含至少一条语句
    case 可以包含多个
    case value 1,
         value 2:
         statements
*/


// 区间匹配

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")



// -- 元组 Tuples

let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("(0,0) is at the origin")
case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}



// -- 值绑定 Value Bindings

/*
    将case匹配值绑定到一个临时常量或变量，可在case分支里被引用
*/

let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let(x, y): // 匹配了所有
    print("somewhere else at (\(x), \(y)")
}


// -- Where

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}


// -- 控制转移语句  Control Transfer Statements

/*
    continue
    break
    fallthrough
    return
    throw
*/

// Continue  停止本次循环，执行下次循环

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
for character in puzzleInput.characters {
    switch character {
        case "a", "e", "i", "o", "u", " ":
        continue
    default:
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)

// Break  立刻结束整个控制流执行

// 循环语句中的 break         中断循环体执行并跳出循环体
// Switch 语句中的 break      中断switch代码块执行，跳出switch代码块 可用来忽略某个分支

let numberSymbol: Character = "三"
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}


// -- 贯穿  Fallthrough

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough         // 实现同 C语言一样 不break便贯穿case的效果
default:
    description += " an integer."
}
print(description)

// -- 带标签的语句 Labeled Statements

let finalSquare3 = 25 // 小游戏最终需要落在第25个格子里才算赢
var board3 = [Int](count: finalSquare + 1, repeatedValue: 0)
board3[03] = +08; board3[06] = +11; board3[09] = +09; board3[10] = +02
board3[14] = -10; board3[19] = -11; board3[22] = -02; board3[24] = -08
var square3 = 0
var diceRoll3 = 0
gameLoop: while square != finalSquare {  // 使用 gameLoop 标记循环体
    if ++diceRoll3 == 7 { diceRoll3 = 1}
    switch square3 + diceRoll3 {
        case finalSquare3:
        // 到达最后一个方块，游戏结束
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // 超出最后一个方块，再掷一次骰子
        continue gameLoop
    default:
        // 本次移动有效
        square3 += diceRoll3
        square3 += board3[square3]
    }
}
print("Game over!")


// -- 提前退出 Early Exit

// guard-else   类似if 但必须有 else 分句

func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    print("Hello \(name)")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    print("I hope the weather is nice in \(location)")
    
}

greet(["name": "John"])
greet(["name": "John", "location": "Cupertion"])


// -- 检测API可用性 Checking API Availability

if #available(iOS 9, OSX 10.10, *) {
    // 在 iOS 使用 iOS 9 的 API, 在 OS X 使用 OS X v10.10 的 API
} else {
    // 使用先前版本的 iOS 和 OS X 的 API
}


