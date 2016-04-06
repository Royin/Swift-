//: Playground - noun: a place where people can play

import UIKit


// ---- 集合类型  Collectin Types -----



// ---- 集合的可变性 Mutability of Collections ----
/*
    分配成常量不可变
    分配成变脸可变
*/



// ---- 数组 Arrays ----


// 数组的简单语法  Array Type Shorthand Syntax
/*
    Array<Element>    Array[Element]
*/



// 创建一个空数组 Creating an Empty Array

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")

someInts.append(3)      // someInts 现在包含一个Int值3
someInts = []           // 空数组，仍是[Int]类型



// 创建一个带有默认值的数组 Creating an Array with a Default Vaule

var threeDoubles = [Double](count: 3, repeatedValue: 0.0)   // 构造方法
// [0.0, 0.0, 0.0, 0.0, 0.0]



// 通过两个数组相加创建一个数组   Creating an Array by Adding Two Arrays Together

var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)

var sixDoubles = threeDoubles + anotherThreeDoubles



// 用字面量构造数组  Creating an Array with an Array Literal

var shoppingList:[String] = ["Eggs", "Milk"]

var shoppingList2 = ["Eggs", "Milk"]



// 访问和修改数组  Accessing and Modifying an Array 

print("The shopping list contains \(shoppingList.count) items")

if shoppingList.isEmpty {                   // .isEmpty 判断是否为空
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty")
}

shoppingList.append("Four")                 // append(_:)添加新数据

shoppingList += ["Baking Powder"]           // += 添加新数据项
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]             // []下边获取，从0开始

shoppingList[0] = "Six eggs"                // 使用下标改变值
shoppingList[4...6] = ["Bananas", "Apples"]
/*
    注：不可用下边访问形式在数组尾部添加新项
*/

shoppingList.insert("Maple Syrup", atIndex: 0) // insert(_:atIndex:)在某个索引值前添加数据项

let mapleSyrup = shoppingList.removeAtIndex(0) // removeAtIndex 移除某项并返回被移除项

firstItem = shoppingList[0]

let apples = shoppingList.removeLast()         // removeLast 移除最后一项
/*
    注：removeLast 移除最后一项而不是removeAtIndex(_:)避免需要获取数组count属性
*/



// 数组的遍历  Iterating Over an Array 

for item in shoppingList {                     // for-in 循环遍历数组
    print(item)
    print("\(item)")
}



// ------ 集合 Sets ------

/*
    存储相同类型且无确定顺序值得。顺序不重要或希望确保每个元素只出现一次时可用集合而非数组
*/


// 集合类型的哈希值 Hash Values for Set Types
/*
    可哈希化的类型才能存储在集合中
    所有基本类型默认可哈希化
    自定义类型需遵守Hashable协议
*/


// 集合类型语法 Set Type Syntax

/*
    Set<Element>
*/


// 创建和构造一个空的集合 Creating and Initializing an Empty Set 

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
letters.insert("a")

letters = []



// 用数组字面量创建集合 Creating a Set with an Array Literal

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

var favoriteGenres2: Set = ["Rock", "Classical", "Hip hop"]



// 访问和修改一个集合 Accessing and Modifying a Set

print("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky")
} else {
    print("I have particular music preferences.")
}


favoriteGenres.insert("Jazz")               // insert(_:)添加新元素

if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm not over it.")
} else {
    print("I never much cared for that.")
}                                           // remove(_:)删除元素并返回该元素，如无返回nil

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")        // contains(_:)是否包含某值
}



// 遍历一个集合 Iterating Over a Set

for genre in favoriteGenres {
    print("\(genre)")
}                                           // for-in 遍历集合
// Classical
// Jazz
// Hip hop

for genre in favoriteGenres.sort() {
    print("\(genre)")
}                                           // sort() 方法返回一个有序集合
// prints "Classical"
// prints "Hip hop"
// prints "Jazz



// 集合操作 Performing Set Operations

// 集合的基本操作 Fundamental Set Operations
/*
    intersect(_:) 交集
    exclusiveOr(_:) 交集的补集
    union(_:) 并集
    subtract(_:) 差集
*/

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sort()          // 并集 排序

oddDigits.intersect(evenDigits).sort()      // 交集

oddDigits.subtract(singleDigitPrimeNumbers).sort() // 差集

oddDigits.exclusiveOr(singleDigitPrimeNumbers).sort()   // 交集的补集


// 集合成员关系和相等

/*
    == 相等
    isSubsetOf(_:) 被包含
    isSupersetOf(_:) 包含
    isStrictSubsetOf(_:) 为子集合  isStrictSupersetOf(_:) 为父集合   且不相等
    isDisjointWith(_:) 是否没有交集
*/

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubsetOf(farmAnimals)
farmAnimals.isSupersetOf(houseAnimals)
farmAnimals.isDisjointWith(cityAnimals)




// ---- 字典 dictionaries ----


// 自定类型快捷语法 Dictionary Type Shorthand Syntax

/*
    Dictionary<Key, Value>    [Key: Value]
*/

// 创建一个空字典 Crate an Empty Dictionary

var namesOfIntegers = [Int: String]()

namesOfIntegers[16] = "sixteen"                     // 键值对：16->sixteen
namesOfIntegers = [:]                               // 空字典


// 用字典字面里创建字典 Creating a Dictionary with a Dictionary Literal

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

var airports2 = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]


// 访问和修改字典 Accessing and Modifying a Dictionary

airports["LHR"] = "London"              // 使用下标语法添加新数据
airports["LHR"] = "London Heathrow"     // 










