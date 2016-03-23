//: Playground - noun: a place where people can play

import UIKit


// ---- 基本运算符 Basic Operators ----


// 属于 Terminology
/*
    一元运算符   对单一对象操作
    二元运算符   对两个对象操作
    三元运算符   三个操作对象
*/


// 赋值运算符 AssignmentOperator

let b = 10
var a = 5
a = b                       // a = 10

let (x, y) = (1, 2)         // x = 1    y = 2

/*
    赋值操作部返回任何值
    if x = y {
        // 此语句错误，因为 x = y 并不返回任何值
    }
*/


// 算术运算符 Arithmetic Operators

/*
    加+ 减- 乘* 除/
*/
1 + 2
5 - 3
2 * 3
10.0 / 2.5

// +运算符可用于String的拼接
"hello," + "world"


// 求余运算符 Remainder Operator %

9 % 4       // a = (b x 倍数) + 余数
-9 % 4


// 浮点数求余计算 Floating-Point Remainder Calculations

8 % 2.5


// 自增和自减运算  

var d = 0
let e = ++d             // d = 1  e = 1
let f = d++             // d = 2  f = 1


// 一元负号运算符 Unary Minus Operator

let three = 3
let minusThree = -three
let plusThree = -minusThree


// 一元正号运算符 Unary Plus Operator

let minusSix = -6
let alsoMinusSix = +minusSix    // + 不做任何改变返回操作数值


// 组合赋值运算符 Compound Assignment Operators

var num = 1
num += 2
/*
    符合赋值运算没有返回值，let b = a + 2 错误
*/


// 比较运算符

/*
    ==  等于
    !=  不等于
    >   大于
    <   小于
    >=  大于等于
    <=  小于等于
*/
1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1

let name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}


// 三目运算符(Ternary Conditional Operator) 问题 ？ 答案1 : 答案2

/*
if question {
    answer 1
} else {
    answer 2
}
*/

let contentHeigth = 40
let hasHeader = true
let rowHeight = contentHeigth + (hasHeader ? 50 : 20)


// 空合运算符 (Nil Coalescing Operator)  ？？

/*
    a ?? b
    相当于 a != nil ? a! : b

    注意：a 为非空值得话，b不会被估值
*/

let defaultColorName = "red"
var userDefinedColorName: String?   // 默认值为nil

var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName


// 区间运算符 Range Operators

// 闭区间运算符 Closed Range Operator ...

for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}

// 半开区间运算符 Half-Open Range Operator     a..<b

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("第\(i + 1)个人叫\(names[i])")    // 最后打印第4个人叫Jack, i = 3
}


// 逻辑运算 Logical Operators

/*
    !a      逻辑非
    a && b  逻辑与
    a || b  逻辑或
*/

// 逻辑非 Logical NOT Operator   !a

let allowedEntry = false;
if !allowedEntry {
    print("ACCESS DENIED")
}

// 逻辑与 Logical AND Operator   a && b

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

// 逻辑或 Logical OR Operator    a || b

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}


// 逻辑运算符组合计算 Combining Logical Operators

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}


// 使用括号来明确优先级 Explicit Parentheses

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}





