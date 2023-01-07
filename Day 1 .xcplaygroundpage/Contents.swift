// Day 1💗
// 1. Varaibles and Constants

// var
// var 변수명 : 데이터타입 = 값
var name : String = "소라"
var age : Int = 100
var job = "서비스기획자"  // 타입추론
print("\(type(of: job))")

// 변수는 값을 변경할 수 있다
age = 99

// 변경할때는 기존의 타입과 동일하게 값을 할당해줘야 한다
job = "개발공부를 좋아하는 서비스기획자"

print("저의 이름은 \(name)이고, 나이는 \(age)세 이며, 직업은 \(job)입니다.")


// let
// let 상수명 : 데이터타입 = 값
let fullName : String = "이소라"
var realAge: Int = 100
var realJob = "K직딩" // 타입추론
let weight = 99 // 타입추론

print("\(type(of: realJob))")    // Double
print("\(type(of: weight))")    // Double

realAge = 90
realJob = "개발자"

print("저의 진짜 이름은 \(fullName)이고, 나이는 \(realAge)살 이며, 직업은 \(realJob)입니다!")




// 2. Strings and integers
var str = "Hello, playground"
var realage = 100
var population = 8_000_000 // 큰 숫자면 underscore이용해서 구분한다

// 3. Multi-line Strings
// 코드의 들여 쓰기는 마지막 """을 기준으로 정해진다
// 문자열이 마지막 """보다 앞에 있다면 에러가 발생함
var str1 = """
    This goes
    over multiple
    lines.
"""
print(str1)

// Multi-line에서 줄 바꿈 하기 싫다면 \(back slash) 사용
var str2 = """
This goes \
over multiple \
lines.
"""
print(str2)


// 4. Doubles and booleans
var boolean : Bool = false
boolean.toggle() // false -> true

let MyNameIsSora : Bool = true
let MyNameIsJenny : Bool = false

print("내 이름은 소라입니까? : \(MyNameIsSora)")
print("당신의 이름은 제니입니까? : \(MyNameIsJenny)")


// 5. String interpolation (문자열 보간)
var score = 90
var str3 = "Yout score was \(score)"
var results = "The test results are here: \(str3)"
print(results)

var city = "서울"
var message = "Welcome to \(city)~!"
print(message)

var name1 = "New Jeans"
var age1 = 25
var latitude = 24.234421
print("Your name is \(name1), your age is \(age1), and your latitude is \(latitude).")
// 문자열 보간 안에서 연산자를 사용 할 수 있다.
var age2 = 25
print("You are \(age2) years old. In another \(age2) years you will be \(age2 * 2).")


// 6. Type annotation
let album: String = "NewJeans"
let year: Int = 2022
let height: Double = 1.24
let NewJeansRocks: Bool = true

// Simple types: Summary
var summary: String = """
[Simple types : Summary]
1. You make variables using var and constants using let.
It's preferable to use constants as often as possible.
2. Strings start and end with double quotes, but if you want them to run across multiple lines you should thress sets of doulbe quotes.
3. Integers hold whole numbers, doubles hold fractional numbers, booleans hold true of false.
4. String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
5. Swift uses type inference to assign each variable or constant a type, but you can provice explicit types if you want.
"""
print(summary)

























