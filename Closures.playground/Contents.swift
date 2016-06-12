//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// ---- 闭包 Closures ----

/*
    闭包是自包含的函数代码块，与Objective-C中的Blocks比较相似

    闭包三种形式：
    *全局函数是一个有名字但不会捕获任何值的闭包
    *嵌套函数是一个有名字并可以捕获其封闭函数域内值得闭包
    *闭包表达式是一个利用轻量级语法所写的可以捕获其上下文中变量或常量值得匿名闭包

    闭包语法优化：
    *利用上下文推断参数和返回值类型
    *隐式返回单表达式闭包，即单表达式闭包可以省略return关键字
    *参数名称缩写
    *尾随（Trailing）闭包语法
*/



// -- 闭包表达式 Closure Expressions


// -- sort 方法  The Sort Method

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed = names.sort(backwards) // sort(_:)方法可接受一个闭包作为参数以决定如何排序



// -- 闭包表达式语法 Closure Expression Syntax

/*
    闭包表达式语法有如下一般形式：

    { (parameters) -> returnType in
        statements
    }

    闭包表达式语法可以使用常量、变量和inout类型作为参数，不能提供默认值，也可以在参数列表的最后使用可变参数，元组也可以作为参数和返回值
*/

reversed = names.sort({ (s1: String, s2: String) -> Bool in
    return s1 > s2
}) // backwards(_:_:)函数对应的闭包表达式版本代码
reversed = names.sort( { (s1: String, s2: String) -> Bool in return s1 > s2 } )



// -- 根据上下文推断类型 Inferring Type From Context