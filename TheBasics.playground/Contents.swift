
// ----基础部分 The Basics----



// ----常量和变量 Constants and Variables----


// ----声明常量和变量 Declaring Constants and Variables----

let maximumNumberOfLoginAttempts = 10                   // let声明常量
var currentLoginAttempt = 0                             // var声明变量

let a = 1, b = 2, c = 3
var d = 4, e = 5, f = 6                                 // 一行中声明多个用逗号隔开


// ----类型标注 Type Annotations----

var welcomMessage:String                                // 冒号后声明类型
welcomMessage = "Hello"

var red, green, blue:Double                             // 声明多个变量并指定类型
                                                        // 一般很少需要指定类型，Swift会根据初始值判断其类型


// ----常量和变量的命名 Naming Constans and Variables----

let π = 3.1419
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"                                     // 不可：1.数学符号 2.箭头 3.保留的Unicode码 4.数字开头
                                                        // 1.不能重命名 2.不能改类型 3.声明常量需赋初值或指定类型
var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
// languageName = "Swift++"                             // 常量值不能改变


// ----输出常量和变量 Printing Constans and Variables----

// ----输出函数 print(_:separator:terminator:)----

print(friendlyWelcome)                                  // print 自动换行
print(friendlyWelcome, terminator:"")                   // 传空参取代默认的换行符

print("The current value of friendlyWelcome is \(friendlyWelcome)") // 可使用 \(名字) 进行字符串插入


// --注释 Comments

// 此处为单行注释

/* 多行
注释 */

/* 注释
/* 嵌套 */
注释嵌套 */


// -----分号----

// Swift不强制每条语句结尾使用分号(;)，也可按习惯添加，同一行内多条独立语句需使用分号隔开

let cat = "🐱"; print(cat)


// ---- 整数 Integers ----

// 8、16、32、64位 UInt无符号 Int有符号

// ---- 整数范围 Integer Bounds ----

let minValue = UInt8.min
let maxValue = UInt8.max

let minInt8 = Int8.min
let maxInt8 = Int8.max


// ---- Int ----

// 32位平台， Int 等价于 Int32
// 64位平台， Int 等价于 Int64


// ---- UInt ----

// 32位平台， UInt 等价于 UInt32
// 64位平台， UInt 等价于 UInt64
// 非必需情况尽量不使用UInt，统一使用Int可提高复用性，避免类型转换。。


// ---- 浮点数 Floating-Point Numbers ----

// 有小数部分的数字

// Double 64位   存储很大或很高精度时使用
// Float 32位    经度要求不高时使用

// 注意：Double精确度很高，至少有15位小数位，而Float只有6位小数位


// ---- 类型安全和类型推断 Type Safety and Type Inference ----

// 错误传不同类型参，编译会进行类型检查
// Swift会通过赋值进行类型推断，不必需显示指定类型

let meaningOfLife = 42              // 会触发类型推断为 Int类型
let pi = 3.14159                    // 推断为 Double类型

let anohterPi = 3 + 0.14159          // 推测为 Double类型


// ---- 数值型字面量 Numeric Literals ----

/*
    十进制     无前缀
    二进制     0b
    八进制     0o
    十六进制    0x
*/

let decimalInterger = 17
let binaryIntger = 0b10001      // 二进制17
let octalIntger = 0o21          // 八进制17
let hexadecimalIntger = 0x11    // 十六进制17

/*
    浮点数字面可以是 十进制或十六进制(前缀0x)。 小数点两边必须至少有一个数字(十进制数字或十六进制数字)
    指数：十进制 用e， 十六进制用p 。 e、p大小写均可
*/

let floatExponent = 1.25e2          // 1.25 * 10^2 （e指数基数为10）
let floatExponent2 = 1.25e-2        // 1.25 * 10^-2

let exponent = 0xFp2    // 15 * 2^2 （p指数基数为2）
let exponet2 = 0xFp-2   // 15 * 2^-2

let decimalDouble = 12.1875
let exponentDouble = 1.21875e2
let hexadecimalDouble = 0xC.3p0     // 十六进制浮点型需为指数形式

// 整数和浮点数 可添加额外的0并且包括下划线_ 增强可读性
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1


// ---- 数值型类型转换 Numeric Type Conversion ----

// 必需时才用显示指定长度类型 优化性能、内存占用、发现值溢出。。。


// ---- 整数转换 Integer Conversion ----

//let cannotBeNegative: UInt8 = -1        // UInt8 不能存储负数     报错
//let booBig: Int8 = Int8.max + 1         // 存储超过最大值          报错

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)   // 不同类型不能相加 需转换


// ---- 整数和浮点数转换 Integer and Floating-Point Conversion ----

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi2 = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi2)        // integerPi 等于3，所以被推测为 Int 类型,浮点值被截断


// ---- 类型别名 Type Aliases ----

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min         // 使用 typealias 给 UInt16 定义别名


// ---- 布尔值 Booleans ----

let orangesAreOrange = true
let turnipsAreDelicious = false  // true false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible")
}

/*
let i = 1
if i {
    
}
*/  // 错误


// ---- 元组 Tuples ----

let http404Error = (404, "Not Found")       // (Int, String)

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")     // 元组分解成常量变量

let (justTheStatusCode,_) = http404Error
print("The status code is \(justTheStatusCode)")    // 只需要一部分值

// 通过下标访问元组
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

// 定义元组时给单个元素命名
let http200Status = (statusCode: 200, description:"OK")
// 通过名字取元素值
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")


// ---- 可选类型  Optionals ----

// 可以让你暗示_任意类型_的值缺失，并不需要一个特殊值。
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)  // convertedNumber推测为可选类型    Int?

// Int? 表示可能包含Int值 也可能不包含值


// ---- nil ----

// 可以给可选变量赋值nil来表示它没有值

var serverResponseCode: Int? = 404
serverResponseCode = nil

// nil不能用于非可选常量和变量。如常量或变量需处理值缺失情况，请声明为可选类型

// 声明一个可选常量或变量没有赋值，自动被置为nil
var surverAnswer: String?

/*
    注意：在Swift中nil不是指针----它是一个确定值，用来表示值缺失
         任何类型的可选状态都可以被设置为nil，不只是对象类型
*/




// ---- if语句以及强制解析 If Statements and Forced Unwrapping----

// 可以用if "==" 或 "!=" nil 判断可选值是否包含值
if convertedNumber != nil {
    print("convertedNumber contains some integer value")
}

// 确定可选类型包含值，在后面加感叹号(!)来获取值。这个感叹号表示有值----可选值的 强制解析(可选类型取值时后面加感叹号)

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!)") // 123
}

print("convertedNumber has an integer value of \(convertedNumber)") // 可选值123




// ---- 可选绑定 Optional Binding ----

/*
    使用可选绑定判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量
    可选绑定可以用在if和while语句中
*/

if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    print("\'\(possibleNumber)\' coule not be converted to an ingeger ")
}

// 可以包含多个可选绑定在if语句中，并使用where字句做布尔值判断
if let firstNumber = Int("4"), secondNumber = Int("42") where firstNumber < secondNumber {
    print("\(firstNumber) < \(secondNumber)")
}




// ---- 隐式解析可选类型 Implicitly Unwrapped Optionals ----

// 可选类型String 和隐式解析可选类型String之间的区别
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // 需要惊叹号来获取值

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // 不需要感叹号

/*
    可把隐式解析可选类型当做可自动解析的可选类型
    声明的时候类型后面加上感叹号，就能隐式解析，不需每次取值时加感叹号

    注意：如果隐式解析的可选类型没有值时尝试取值，会触发运行错误
*/

// 隐式解析可选类型 仍可当普通可选类型进行判断
if assumedString != nil {
    print(assumedString)
}

// 在可选绑定中使用隐式解析可选类型检查并解析值
if let definiteString = assumedString {
    print( definiteString)
}

/*
    注意：如果一个变量可能变为nil,不要使用隐式解析可选类型。
         如果需要在变量的生命周期中判断是否是nil的话，使用品通可选类型。
*/




// ---- 错误处理 Error Handling ----


func canThrowAnError() throws {
    // 这个函数有可能抛出错误
}

// 一个函数可以通过在声明中添加throws关键词来抛出错误信息。当函数能抛出错误信息时，应在表达式中前置try关键词
do {
    try canThrowAnError()
    // 没有错误信息抛出
} catch {
    // 有一个错误信息抛出
}

/** eg.错误处理应对不同错误条件的例子

func makeASandwich() throws {
    // ...
}

do {
    try makeASandwich()
    eatAsandwich()
} catch Error.OutOfCleanDishes {
    washiDishes()
} catch Error.MissingIngredients(let ingredients) {
    buyGroceries(ingerdients)
}

**/




// ---- 断言 Assertions ----


// ---- 使用断言进行调试 Debugging with Assertions ----

/*
    assert(_:_file:line:)
*/

let age = 3
assert(age >= 0, "A person's age cannot be less than zero")

// 不需断言信息
assert(age >= 0)

/**
    注意：优化编译时，断言会被禁用。列入在Xcode中，使用默认的target Release配置选项来build时，断言会被禁用
**/



// ---- 何时使用断言 When to Use Assertions ----

/*
    当条件可能为假时使用断言，但最终一定要_保证_条件为真，这样代码才能继续运行。断言的适用情景：

    *整数类型的下标索引被传入一个自定义下标实现，但是下标索引值可能太小或者太大。
    *需要给函数传入一个值，但是非法的值可能导致函数不能正常执行。
    *一个可选值现在是nil，但是后面的代码运行需要一个非nil值。

    注意：断言可能导致你的应用终止运行，所以应当仔细设计代码来让非法条件不会出现。
         然而，在应用发布之前，有时候非法条件可能出现，这时使用断言可以快速发现问题。
*/






