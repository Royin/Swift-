//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



// ---- 字符串和字符 Strings and Characters -----


// 字符串字面量 String Literals

let someString = "Some string literal value"



// 初始化空字符串 Initializing an Empty String

var emptyString = ""                // 空字符串
var anotherEmptyString = String()   // 初始化方法
// 两个字符串均未空并等价

if emptyString.isEmpty {
    // .isEmpty 判断字符串是否为空
    print("Nothing to see here")
}



// 字符串可变性  String Mutability

var variableString = "Horse"
variableString += " and carriage"

/*

let constantString = "Highlander"
constantString += " and another Highlander"
    编译错误：常量字符串不可以被修改

*/



// 字符串是值类型 Strings Are Value Type

for character in "Dog!🐶".characters {
    // 使用 .characters 属性获取每一个字符的值
    print(character)
}

let exclamationMark: Character = "!"        // 建立字符常量或变量


// 字符串可以通过传递一个值类型为Character的数组作为变量为初始化
let catChatacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catChatacters)
print(catString)



// 连接字符串和字符 Concatenating Strings and Characters

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2     // +

var instruction = "look over"
instruction += string2          // +=

let exclamationMark2: Character = "!"
welcome.append(exclamationMark2)         // appen()方法将一个字符加到字符串变量尾部



// 字符串插值 String Interpolation

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
/*
    使用  \(字符串)  进行插值

    注意：插值字符串中括号内表达式不能包括非转义反斜杠(\),并且不能包含回车符或换行符
*/



// Unicode 国际标准


// Unicode 标量 (Unicode Scalars)

/*
    注意： Unicode 码位(code poing) 的范围是U+0000到U+D7FF或者U+E000到U+10FFFF。Unicode 标量不包括 Unicode 代理项(surrogate pair) 码位，其码位范围是U+D800到U+DFFF。
*/



// 字符串字面量的特殊字符 (Special Characters in String Literals)

/*
    字符串字面量可以包含以下特殊字符
    转义字符  \0(空字符) \\(反斜线) \t(水平制表符) \n(换行符) \r(回车符) \"(双引号) \'(单引号)
    Unicode标量  \u{n} n为任意一到八位十六进制数且可用得Unicode位码

*/

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"



// 可扩展的字形群集 (Extended Grapheme Clusters)

/*
    每一个Character类型代表一个可扩展的字形群
*/

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"

let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"

let enclosedEAcute: Character = "\u{E9}\u{20DD}"

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1F8}"



// 计算字符数量 Counting Characters

/*
    count 属性，获取字符串中Character值得数量
*/
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.characters.count) characters")

var word = "cafe"
print("the number of characters in \(word) is \(word.characters.count)") // 4

word += "\u{301}"

print("the number of characters in \(word) is \(word.characters.count)") // 4


// 访问和修改字符串 Accessing and Modifying a String


// 字符串索引 String Indices

/*
    String.Index
    Swift的字符串不能用整形(integer)做索引
    startIndex 获取字符串String的第一个Character索引
    endIndex   获取最后一个Character 后一个 位置索引， 不能作为字符串有效下标
    空字符串startIndex 和 endIndex 是相等的

    String.Index的 predecessor() 可得到前面一个索引, successor()后面一个索引
    advancedBy(_:) 也可以获取另一个索引
*/

let greeting = "Guten Tag!"
greeting[greeting.startIndex]

greeting[greeting.endIndex.predecessor()]

greeting[greeting.startIndex.successor()]

let index = greeting.startIndex.advancedBy(7)
greeting[index]

/*
    获取越界索引对应的Character 会引发运行时错误
greeting[greeting.endIndex]
greeting.endIndex.successor()

*/

/*
    Characters的indices属性会创建按一个包含全部索引返回的Range
*/
for indexs in greeting.characters.indices {
    print("\(greeting[indexs]) ", terminator: "")
}



// 插入和删除 Inserting and Removing

/*
    insert(_:atIndex:) 在字符串中指定索引插入一个字符
*/
var welcomed = "hello"
welcomed.insert("!", atIndex: welcomed.endIndex)

/*
    insertContentsOf(_:at:) 在字符串指定索引插入字符串
*/
welcomed.insertContentsOf(" there".characters, at: welcomed.endIndex.predecessor())

/*
    removeAtIndex(_:) 在指定索引删除一个字符
*/
welcomed.removeAtIndex(welcomed.endIndex.predecessor())

/*
    removeRange(_:) 在指定索引删除一个子字符串
*/
let range = welcomed.endIndex.advancedBy(-6)..<welcomed.endIndex
welcomed.removeRange(range)



// 比较字符串 Comparing Strings

/*
    1.字符串字符相等
    2.前缀相等
    3.后缀相等
*/


// 字符串/字符相等  String and Character Equality

/*
    可用 ==  !=  比较
*/
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}

let eAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
let combinedEAcueQuestion = "Voulez-vous un caf\u{E9}?"
if eAcuteQuestion == combinedEAcueQuestion {
    print("These two strings are considered equal")
}

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters are not equivalent")
}

/*
    注意：在Swift中，字符串和字符并不区分地域
*/



//  前缀/后缀相等 Prefix and Suffix Equality

/*
    hasPrefix(_:)   hasSuffix(_:)
*/
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
    ]
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        ++act1SceneCount
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        ++mansionCount
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        ++cellCount
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")



// 字符串的 Unicode表示形式 （Unicode Representatins of Strings)

/*
    UTF-8 代码单元集合 (利用字符串的utf8属性进行访问)
    UTF-16 代码单元集合 (利用字符串的utf16属性进行访问)
    21位的 Unicode 标量值集合，也就是字符串的 UTF-32 编码格式 (利用字符串的unicodeScalars属性进行访问)
*/

let dogString = "Dog!!🐶"



// UTF-8 表示
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator:"")
}
// 68 111 103 226 128 188 240 159 144 182



// UTF-16 表示

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// 68 111 103 8252 55357 56374



// Unicode 标量表示 (Unicode Scalars Representation)

for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print("")
// 68 111 103 8252 128054

for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
// D
// o
// g
// ‼
// 🐶



