// 1. Arithmetic operators 산술연산자

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

// 2. Operator overloading 연산자 오버로딩
// Swift type-safe language라서 유형을 혼합 할 수 없다!
// int
let maeninglife = 42
let doublemeaning = 42 + 42
// string
let fakers = "소라의"
let action = fakers + "개발공부" // 소라의 개발공부


// 3. Compound assignment operators
var score = 95
score -= 5

var quote = "오늘은 월요일이고"
quote += "내일은 화요일이야." // "오늘은 월요일이고 내일은 화요일이야."


// 4. Comparison operators 비교연산자
let firstScore1 = 6
let secondScore1 = 4

firstScore1 == secondScore1  // False
firstScore1 != secondScore1  // True
firstScore1 < secondScore1 // False
firstScore1 >= secondScore1 // True

// 비교연산자는 문자열에도 적용되며 알파벳순으로 적용된다
"Black" <= "Pink" // True
"Pink" <= "Black" // false


// 5. Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}


// 6. Combining Conditions
// && (and), || (or)
// 조건 앞에 ! 가 있으면 not이라는 의미입니다

let age1 = 12
let age2 = 21
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
} else if age1 > 22 || age2 > 22 {
    print("At least one is over 18")
} else {
    print("None of them are over 18")
}


// 7. The ternary Conditional operator
// 조건문을 더 편리하고 빠르게 선언하는 방법
let numberOfLegs = 4
let animal = numberOfLegs > 2 ? "mammal" : "bird"
print(animal)  // mammal 출력

// if firstCard1 == secondCard1 {
//     print ("Same")
// } else {
//     print ("Diff")
// 위에서 작성된 조건문이 ternary 방식으로 작성되면 아래와 같음
let firstCard1 = 11
let secondCard1 = 10
print(firstCard1 == secondCard1 ? "Same" : "Different") // Diff출력

let phone = "iphone"
print(phone == "Android" ? "Failure" : "Success")  // Success출력



// 8. Switch Statement
let weather = "rain"  // Bring un Umbrella 출력됨
switch weather {
case "rain":
    print("Bring an Umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// if else구문을 Switch구문으로 바꿔보기!
// let chr = "a"
// if chr == "a" {
//    print("캐릭터는 a 입니다.")
// }
// else if chr == "b" {
//    print("캐릭터는 b 입니다.")
// }

let chr = "a"
switch chr {
case "a":
    print("이것은 a입니다")
case "b":
    print("이것은 b입니다")
default:
    print("아무것도 선택안됨")
}


// 9. Range Operators
let testScore = 85 // You did great 출력됨
switch testScore {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did Ok.")
case 85...100:
    print("You did great!")
default:
    print("Good work!")
}
    





