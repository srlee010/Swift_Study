// Day 2😆
// 1. Arrays

let jenny = "Kim Jenny"
let Lisa = "La Lisa"
let Jisoo = "Kim Jisoo"
let Rose = "Park Chae-Yong"
let BlackPink = [jenny, Lisa, Jisoo, Rose]
BlackPink[0]   // Kim Jenny
print(BlackPink[1])   // La Lisa

var evenNumbers = [2, 4, 6, 8]
// songs에 따로 유형을 지정해주기 않았기에 단지 예측만으로 string유형이라고 표시
var songs = ["마지막처럼", "뚜두뚜두", "Pink Venom"]
type(of: songs)
// 여기에 int유형을 넣으면 오류가 난다! 그럴땐, [Any] 사용
// 혼합 배열 유형(String과 Int)사용하기 위해선 [Any]데이터유형 지정해주기!
var Mixsongs: [Any] = [333, "하늘", "처럼", "날아보자"]
type(of: Mixsongs)

// 배열에서 Annotation type을 사용하는 경우, 배열은 대괄호로 작성해야함
// [String], [Int], [Double], [Bool]
var songs1: [String] = [] // 배열을 만들고 나중에 채우기 위한 방법

//배열 동일한 선언 예시
var names: [String] = ["A", "B", "C", "D", "E", "F"]
// (동일) var names: Array<String> = ["A, B, C, D, E, F"]

// Any데이터를 요소로 갖는 빈 배열 생성
var EmptyArray: [Any] = []  // 배열타입 꼭 명시했다면 []만으로도 빈 배열 생성 가능
// (동일) var emptyArray: [Any] = [Any]()
// (동일) var emptyArray: [Any] = Array<Any>()

print(EmptyArray.isEmpty) // 비어있는 배열인지 확인하는 법
print(names.count) // 배열에 몇개의 요소가 있는지 확인하는 법

// 배열은 각 요소의 인덱스를 통해 접근 가능, 중복된 요소는 먼저 발견된 걸 반환함.
// 맨 처음과 마지막 요소는 fistIndex(of:), lastIndex(of:)
// 중간에 요소를 추가하고 싶다면 insert(_:at:)
// 맨 뒤에 요소를 추가하고 싶다면 append(_:)
// 요소를 삭제하고 싶다면 remove(_:)
names.append("G") // 맨 뒤 추가
names.append(contentsOf: ["H", "I"]) // 맨 뒤 추가
names.insert("뿅", at: 2) // 인덱스 2에 뿅이 추가됩니다
names.removeFirst() // A가 삭제됨
names.removeLast() // I가 삭제됨


// 배열 연산자 : 두 배열을 병합할 수 있음
var both = songs + Mixsongs
// +=를 사용하여 추가하고 할당 할 수 있음
both += ["Hype Boy"]


// 2. Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red"])
// String 타입의 Set을 선언과 동시에 초기화를 합니다.
var animal: Set<String> = ["dog", "cat", "mokey", "lion", "dog"]
print(animal.isEmpty) // animal이 비어있는지 여부 확인
animal.insert("tiger") // animal에 1개 값 추가
print(animal.count) // 중복값은 제외하고 Set animal이 가진 값의 수를 확인

// 예시
var readings = Set([true, false, true, false])
var ratings = Set([1, 1, 1, 2, 2, 2]) // Set에는 고유항목이 포함되어 있어야 하므로 중복값은 모두 삭제됨
let SetTest:Set = ["가", "나", "다", "라"]
print(SetTest)


// 3. Tuples
var name = (first: "Swift", last: "Taylor")
name.0
name.1
name.first

// 튜플의 장점! : 사용자가 직접 값 생성해서 이름 & 유형을 동시에 제공함
var person = (name: "소라", age: 100, isRich: true)

// 튜플과 배열의 차이점
var websiteTuple = (Name: "소라빵블로그", url: "https://blog.naver.com/loleego") // 튜플: 유형 변경 불가 (nam & url로만 지정했기 때문)
websiteTuple.0
var websiteArray = ["소라빵블로그", "https://blog.naver.com"] // 배열: 이름(유형)이 없으므로 더 많은 항목 추가 가능
websiteArray[0]



// 4. Dictionary
let scores = ["Sarah": 100] // key= Sarah, 키값=100
let heights = ["쿠키": 3.4, "뽀삐": 5.3]
var roles = ["captain": "Mal", "engineer": "Kaylee"]

let favoriteIceCream = ["소라": "초코", "지우": "딸기"]
favoriteIceCream["소라"] // 소라가 좋아하는 아이스크림 확인하는법
favoriteIceCream["민주"] // 해당 키값이 없을 때 nill 반환
favoriteIceCream["민주", default: "unknown"] // unknown의 기본값을 지정해 nill이 반환되는 문제 해결 가능 -> unknown반환됨 ⭐️딕셔너리 기본값이 필요한 이유? 딕셔너리에서 값이 없을때마다 nill이 호출되면 코드에 문제가 생길 수 있음, 누락값음 안전하게 처리하기 위해 기능을 추가해야하기 때문에 사전 기본값이 입력됨

// 예시 1
let planets = [1: "Mercury", 2: "Venus"]
let venus = planets[2, default: "Planet X"]

// 예시 2
let books = ["Austen": "Pride and Prejudice"]
let dickens = books["dickens", default: "unknown"]
let rainbow = books["rainbow", default: "unknown"]

// 예시 3
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
teams["Paul"] = "red" // 나중에 항목 추가할때 이렇게 하면 됨
// 정수를 저장하기 위해 Empty Array 만들 수도 있음'
var results = [Int]()
// 예외: Empty Set을 만들때는 다르게 선언해야함! 이유는 Swift가 딕셔너리와 배열만을 위한 특별한 구문을 가지고 있기 때문.
var words = Set<String>()
var numbers = Set<Int>()
// 다른 유형은 집합과 같은 꺽쇠 괄호 구문을 사용해야한다.
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
// 예시
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



// 예시 1 : 이렇게 세부적으로 열거형에 관련 정보를 추가하게 되면 복잡한 코드를 작성하지 않아도 됩니다.
enum Weather {
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}
let Windy = Weather.windy(speed: 23)

// 예시 2:
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


// 만약 식당 재료가 한정적이라 파스타의 맛, 피자 도우, 토핑등을 특정 메뉴로 한정 짓고 싶다면 ? 아래와 같이 열거형으로 바꾸면 됨
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
    case mercury = 1 // 여기에 정수값 1을 직접 할당하면 Swift가 위에서부터 아래로 자동으로 숫자 생성함.
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

// 3. Sets store items without any order, so you can’t access them using numerical positions.

// 4. Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.

// 5.Dictionaries store items according to a key, and you can read items using those keys.
      
// 6. Enums are a way of grouping related values so you can use them without spelling mistakes.
      
// 7. You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.



