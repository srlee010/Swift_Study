
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

