
// Day 5 🥯
// 1. Writing Functions
// 함수 호출 키워드 func
// 매개변수는 소괄호로 감싸준다 ()
// 매개변수는 함수를 정의할 때 외부로부터 받아들이는 전달 값의 이름을 의미
// 반환 키워드 return

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()

func BlackPink() {
    let message = """
Jenny, Jisoo, Lisa, Rose
"""
    print(message)
}
BlackPink()



// 2. Accepting parameters
func square(number: Int) {
    print(number * number)
}
square(number: 3) // 9 출력됨

// 예시 1
// func findDirections(from: String, to: String, route: String, avoidHighways: Bool = true)
// 위에 코드를 실행하려면 아래와 같이 작성하면 됨
// findDirections(from: "London", to: "Seoul, route: "sceinc", "avoidHighways: true)

// 예시 2
func makeBand(names: [String]) {
    print("Let's start a band! 🎺")
    for name in names {
        print("\(name) wants to join!")
    }
}
makeBand(names: ["Sam", "Jay"])


// 3. Returning Values
func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)
print(result)



// 4. Parameter labels
func square2(number: Int) -> Int {
    return number * number
}



// 매개변수가 필요 없는 함수
func helloSora() -> String {
    return "안녕, 소라야!"
}
print(helloSora())


// 매개변수가 여러개인 함수
func welcome(myname: String, yourname: String) -> String {
    "안녕하세요 \(yourname)님!, 저는 \(myname)이라고 합니다."
}
print(welcome(myname: "소라", yourname: "하니")) // 안녕하세요 하니님!, 저는 소라이라고 합니다.


// 전달인자레이블 지정하는 법?
// 함수 정의에서 매개변수 이름 앞에 한칸을 띄운 후 지정한다.
// 전달인자레이블을 별도로 지정하면 함수 외부에서 매개변수의 역할을 좀 더 명확하게 할 수 있음
// func 함수이름 (전달인자레이블1 매개변수1이름 : 매개변수1타입) -> 반환타입 {
// 함수 구현부
// return 반환값
// }

// 전달인자 활용예시 (from과 to라는 전달인자레이블 존재)
// myName과 youtName이라는 매개변수 이름이 있는 welcome이라는 함수
func welcome(from myName: String, to yourName: String) -> String {
    "안녕하세요 \(yourName) 님!, 저는 \(myName)(이)라고 합니다."
}
print(welcome(from: "쏘라", to: "해린"))
