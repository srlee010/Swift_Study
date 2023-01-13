
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

square(number: 8)

