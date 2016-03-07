
// 基础部分 The Basics



// 常量和变量 Constants and Variables


// 声明常量和变量 Declaring Constants and Variables

let maximumNumberOfLoginAttempts = 10                   // let声明常量
var currentLoginAttempt = 0                             // var声明变量

let a = 1, b = 2, c = 3
var d = 4, e = 5, f = 6                                 // 一行中声明多个用逗号隔开


// 类型标注 Type Annotations

var welcomMessage:String                                // 冒号后声明类型
welcomMessage = "Hello"

var red, green, blue:Double                             // 声明多个变量并指定类型
                                                        // 一般很少需要指定类型，Swift会根据初始值判断其类型


// 常量和变量的命名 Naming Constans and Variables

let π = 3.1419
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"                                     // 不可：1.数学符号 2.箭头 3.保留的Unicode码 4.数字开头
                                                        // 1.不能重命名 2.不能改类型 3.声明常量需赋初值或指定类型
var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
// languageName = "Swift++"                             // 常量值不能改变


// 输出常量和变量 Printing Constans and Variables

// 输出函数 print(_:separator:terminator:)

print(friendlyWelcome)                                  // print 自动换行
print(friendlyWelcome, terminator:"")                   // 传空参取代默认的换行符

print("The current value of friendlyWelcome is \(friendlyWelcome)") // 可使用 \(名字) 进行字符串插入


// 注释 Comments

// 单行注释

/* 多行
注释 */

/* 注释
/* 嵌套 */
注释嵌套 */


// 分号








