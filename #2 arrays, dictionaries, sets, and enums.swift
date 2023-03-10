// Day 2๐
// 1. Arrays

let jenny = "Kim Jenny"
let Lisa = "La Lisa"
let Jisoo = "Kim Jisoo"
let Rose = "Park Chae-Yong"
let BlackPink = [jenny, Lisa, Jisoo, Rose]
BlackPink[0]   // Kim Jenny
print(BlackPink[1])   // La Lisa

var evenNumbers = [2, 4, 6, 8]
// songs์ ๋ฐ๋ก ์ ํ์ ์ง์ ํด์ฃผ๊ธฐ ์์๊ธฐ์ ๋จ์ง ์์ธก๋ง์ผ๋ก string์ ํ์ด๋ผ๊ณ  ํ์
var songs = ["๋ง์ง๋ง์ฒ๋ผ", "๋๋๋๋", "Pink Venom"]
type(of: songs)
// ์ฌ๊ธฐ์ int์ ํ์ ๋ฃ์ผ๋ฉด ์ค๋ฅ๊ฐ ๋๋ค! ๊ทธ๋ด๋, [Any] ์ฌ์ฉ
// ํผํฉ ๋ฐฐ์ด ์ ํ(String๊ณผ Int)์ฌ์ฉํ๊ธฐ ์ํด์  [Any]๋ฐ์ดํฐ์ ํ ์ง์ ํด์ฃผ๊ธฐ!
var Mixsongs: [Any] = [333, "ํ๋", "์ฒ๋ผ", "๋ ์๋ณด์"]
type(of: Mixsongs)

// ๋ฐฐ์ด์์ Annotation type์ ์ฌ์ฉํ๋ ๊ฒฝ์ฐ, ๋ฐฐ์ด์ ๋๊ดํธ๋ก ์์ฑํด์ผํจ
// [String], [Int], [Double], [Bool]
var songs1: [String] = [] // ๋ฐฐ์ด์ ๋ง๋ค๊ณ  ๋์ค์ ์ฑ์ฐ๊ธฐ ์ํ ๋ฐฉ๋ฒ

//๋ฐฐ์ด ๋์ผํ ์ ์ธ ์์
var names: [String] = ["A", "B", "C", "D", "E", "F"]
// (๋์ผ) var names: Array<String> = ["A, B, C, D, E, F"]

// Any๋ฐ์ดํฐ๋ฅผ ์์๋ก ๊ฐ๋ ๋น ๋ฐฐ์ด ์์ฑ
var EmptyArray: [Any] = []  // ๋ฐฐ์ดํ์ ๊ผญ ๋ช์ํ๋ค๋ฉด []๋ง์ผ๋ก๋ ๋น ๋ฐฐ์ด ์์ฑ ๊ฐ๋ฅ
// (๋์ผ) var emptyArray: [Any] = [Any]()
// (๋์ผ) var emptyArray: [Any] = Array<Any>()

print(EmptyArray.isEmpty) // ๋น์ด์๋ ๋ฐฐ์ด์ธ์ง ํ์ธํ๋ ๋ฒ
print(names.count) // ๋ฐฐ์ด์ ๋ช๊ฐ์ ์์๊ฐ ์๋์ง ํ์ธํ๋ ๋ฒ

// ๋ฐฐ์ด์ ๊ฐ ์์์ ์ธ๋ฑ์ค๋ฅผ ํตํด ์ ๊ทผ ๊ฐ๋ฅ, ์ค๋ณต๋ ์์๋ ๋จผ์  ๋ฐ๊ฒฌ๋ ๊ฑธ ๋ฐํํจ.
// ๋งจ ์ฒ์๊ณผ ๋ง์ง๋ง ์์๋ fistIndex(of:), lastIndex(of:)
// ์ค๊ฐ์ ์์๋ฅผ ์ถ๊ฐํ๊ณ  ์ถ๋ค๋ฉด insert(_:at:)
// ๋งจ ๋ค์ ์์๋ฅผ ์ถ๊ฐํ๊ณ  ์ถ๋ค๋ฉด append(_:)
// ์์๋ฅผ ์ญ์ ํ๊ณ  ์ถ๋ค๋ฉด remove(_:)
names.append("G") // ๋งจ ๋ค ์ถ๊ฐ
names.append(contentsOf: ["H", "I"]) // ๋งจ ๋ค ์ถ๊ฐ
names.insert("๋ฟ", at: 2) // ์ธ๋ฑ์ค 2์ ๋ฟ์ด ์ถ๊ฐ๋ฉ๋๋ค
names.removeFirst() // A๊ฐ ์ญ์ ๋จ
names.removeLast() // I๊ฐ ์ญ์ ๋จ


// ๋ฐฐ์ด ์ฐ์ฐ์ : ๋ ๋ฐฐ์ด์ ๋ณํฉํ  ์ ์์
var both = songs + Mixsongs
// +=๋ฅผ ์ฌ์ฉํ์ฌ ์ถ๊ฐํ๊ณ  ํ ๋น ํ  ์ ์์
both += ["Hype Boy"]


// 2. Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red"])
// String ํ์์ Set์ ์ ์ธ๊ณผ ๋์์ ์ด๊ธฐํ๋ฅผ ํฉ๋๋ค.
var animal: Set<String> = ["dog", "cat", "mokey", "lion", "dog"]
print(animal.isEmpty) // animal์ด ๋น์ด์๋์ง ์ฌ๋ถ ํ์ธ
animal.insert("tiger") // animal์ 1๊ฐ ๊ฐ ์ถ๊ฐ
print(animal.count) // ์ค๋ณต๊ฐ์ ์ ์ธํ๊ณ  Set animal์ด ๊ฐ์ง ๊ฐ์ ์๋ฅผ ํ์ธ

// ์์
var readings = Set([true, false, true, false])
var ratings = Set([1, 1, 1, 2, 2, 2]) // Set์๋ ๊ณ ์ ํญ๋ชฉ์ด ํฌํจ๋์ด ์์ด์ผ ํ๋ฏ๋ก ์ค๋ณต๊ฐ์ ๋ชจ๋ ์ญ์ ๋จ
let SetTest:Set = ["๊ฐ", "๋", "๋ค", "๋ผ"]
print(SetTest)


// 3. Tuples
var name = (first: "Swift", last: "Taylor")
name.0
name.1
name.first

// ํํ์ ์ฅ์ ! : ์ฌ์ฉ์๊ฐ ์ง์  ๊ฐ ์์ฑํด์ ์ด๋ฆ & ์ ํ์ ๋์์ ์ ๊ณตํจ
var person = (name: "์๋ผ", age: 100, isRich: true)

// ํํ๊ณผ ๋ฐฐ์ด์ ์ฐจ์ด์ 
var websiteTuple = (Name: "์๋ผ๋นต๋ธ๋ก๊ทธ", url: "https://blog.naver.com/loleego") // ํํ: ์ ํ ๋ณ๊ฒฝ ๋ถ๊ฐ (nam & url๋ก๋ง ์ง์ ํ๊ธฐ ๋๋ฌธ)
websiteTuple.0
var websiteArray = ["์๋ผ๋นต๋ธ๋ก๊ทธ", "https://blog.naver.com"] // ๋ฐฐ์ด: ์ด๋ฆ(์ ํ)์ด ์์ผ๋ฏ๋ก ๋ ๋ง์ ํญ๋ชฉ ์ถ๊ฐ ๊ฐ๋ฅ
websiteArray[0]



// 4. Dictionary
let scores = ["Sarah": 100] // key= Sarah, ํค๊ฐ=100
let heights = ["์ฟ ํค": 3.4, "๋ฝ์": 5.3]
var roles = ["captain": "Mal", "engineer": "Kaylee"]

let favoriteIceCream = ["์๋ผ": "์ด์ฝ", "์ง์ฐ": "๋ธ๊ธฐ"]
favoriteIceCream["์๋ผ"] // ์๋ผ๊ฐ ์ข์ํ๋ ์์ด์คํฌ๋ฆผ ํ์ธํ๋๋ฒ
favoriteIceCream["๋ฏผ์ฃผ"] // ํด๋น ํค๊ฐ์ด ์์ ๋ nill ๋ฐํ
favoriteIceCream["๋ฏผ์ฃผ", default: "unknown"] // unknown์ ๊ธฐ๋ณธ๊ฐ์ ์ง์ ํด nill์ด ๋ฐํ๋๋ ๋ฌธ์  ํด๊ฒฐ ๊ฐ๋ฅ -> unknown๋ฐํ๋จ โญ๏ธ๋์๋๋ฆฌ ๊ธฐ๋ณธ๊ฐ์ด ํ์ํ ์ด์ ? ๋์๋๋ฆฌ์์ ๊ฐ์ด ์์๋๋ง๋ค nill์ด ํธ์ถ๋๋ฉด ์ฝ๋์ ๋ฌธ์ ๊ฐ ์๊ธธ ์ ์์, ๋๋ฝ๊ฐ์ ์์ ํ๊ฒ ์ฒ๋ฆฌํ๊ธฐ ์ํด ๊ธฐ๋ฅ์ ์ถ๊ฐํด์ผํ๊ธฐ ๋๋ฌธ์ ์ฌ์  ๊ธฐ๋ณธ๊ฐ์ด ์๋ ฅ๋จ

// ์์ 1
let planets = [1: "Mercury", 2: "Venus"]
let venus = planets[2, default: "Planet X"]

// ์์ 2
let books = ["Austen": "Pride and Prejudice"]
let dickens = books["dickens", default: "unknown"]
let rainbow = books["rainbow", default: "unknown"]

// ์์ 3
var responseMessage = [200: "OK",
                       403: "Access forbidden",
                       404: "File not found",
                       500: "Internal Server error"]
responseMessage[200]
responseMessage[500]




// 5. Dictionary default values
let favoriteIceCream2 = [
    "Paul": "Chocolate",
    "Sophie": "Vanila"
]

favoriteIceCream2["Paul"]
favoriteIceCream2["Sarah"]
favoriteIceCream2["Sarah", default: "unknown"]




// 6. Creating empty collections
var teams = [String: String]()
teams["Paul"] = "red" // ๋์ค์ ํญ๋ชฉ ์ถ๊ฐํ ๋ ์ด๋ ๊ฒ ํ๋ฉด ๋จ
// ์ ์๋ฅผ ์ ์ฅํ๊ธฐ ์ํด Empty Array ๋ง๋ค ์๋ ์์'
var results = [Int]()
// ์์ธ: Empty Set์ ๋ง๋ค๋๋ ๋ค๋ฅด๊ฒ ์ ์ธํด์ผํจ! ์ด์ ๋ Swift๊ฐ ๋์๋๋ฆฌ์ ๋ฐฐ์ด๋ง์ ์ํ ํน๋ณํ ๊ตฌ๋ฌธ์ ๊ฐ์ง๊ณ  ์๊ธฐ ๋๋ฌธ.
var words = Set<String>()
var numbers = Set<Int>()
// ๋ค๋ฅธ ์ ํ์ ์งํฉ๊ณผ ๊ฐ์ ๊บฝ์  ๊ดํธ ๊ตฌ๋ฌธ์ ์ฌ์ฉํด์ผํ๋ค.
var scores1 = Dictionary<String, Int>()
var results1 = Array<Int>()



// 7. enum
let result = "failure"
let result2 = "failed"
let result3 = "fail"
enum Result {
    case success
    case failure
}
let result4 = Result.success
let result5 = Result.failure
// ์์
enum Apple {
    case iphone, iPad, AirPods, Mac
    }
var MyAppleItems = Apple.iphone
print(type(of: MyAppleItems))


// 7. Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "Soccer")



// ์์ 1 : ์ด๋ ๊ฒ ์ธ๋ถ์ ์ผ๋ก ์ด๊ฑฐํ์ ๊ด๋ จ ์ ๋ณด๋ฅผ ์ถ๊ฐํ๊ฒ ๋๋ฉด ๋ณต์กํ ์ฝ๋๋ฅผ ์์ฑํ์ง ์์๋ ๋ฉ๋๋ค.
enum Weather {
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}
let Windy = Weather.windy(speed: 23)

// ์์ 2:
enum MainDish {
    case pasta(taste: String)
    case pizza(dough: String, topping: String)
    case chicken(sauce: Bool)
    case rice
}
let Chicken = MainDish.chicken(sauce: true)
var dinner: MainDish = MainDish.chicken(sauce: false)
dinner = .pasta(taste: "Cream")
print(dinner)


// ๋ง์ฝ ์๋น ์ฌ๋ฃ๊ฐ ํ์ ์ ์ด๋ผ ํ์คํ์ ๋ง, ํผ์ ๋์ฐ, ํ ํ๋ฑ์ ํน์  ๋ฉ๋ด๋ก ํ์  ์ง๊ณ  ์ถ๋ค๋ฉด ? ์๋์ ๊ฐ์ด ์ด๊ฑฐํ์ผ๋ก ๋ฐ๊พธ๋ฉด ๋จ
enum PastaTaste {
    case cream, tomato
}

enum PizzaDough {
    case cheeseCrust, thin, original
}

enum PizzaTopping {
    case pepperoni, cheese, bacon
}

enum MainLunch {
    case pasta(pasta: PastaTaste)
    case pizza(dough: PizzaDough, topping: PizzaTopping)
    case chicken(sauce: Bool)
    case rice
}

var lunch: MainLunch = MainLunch.chicken(sauce: true)
lunch = MainLunch.pizza(dough: .original, topping: .pepperoni)
print(lunch)


//  8. Enum Raw Values
enum Planet: Int {
    case mercury = 1 // ์ฌ๊ธฐ์ ์ ์๊ฐ 1์ ์ง์  ํ ๋นํ๋ฉด Swift๊ฐ ์์์๋ถํฐ ์๋๋ก ์๋์ผ๋ก ์ซ์ ์์ฑํจ.
    case venus
    case earth
    case mars
}
let earth = Planet(rawValue: 3) // earth
print(Planet.mercury.rawValue) // 1
print(Planet.venus.rawValue) // 2
print(Planet.earth.rawValue) // 3


// SUMMARY
// 1. Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.

// 2. Arrays store items in the order you add them, and you access them using numerical positions.

// 3. Sets store items without any order, so you canโt access them using numerical positions.

// 4. Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.

// 5.Dictionaries store items according to a key, and you can read items using those keys.
      
// 6. Enums are a way of grouping related values so you can use them without spelling mistakes.
      
// 7. You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.



