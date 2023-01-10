// Day 4🐿
// 1. For loops

let count = 1...10
for number in count {
    print("Number is \(number)")
}

let albums = ["OMG", "Ditto", "Cookie"]
for album in albums {
    print("\(album)는 뉴진스의 노래입니다.")
}

// loop 사용 시 let(상수)를 사용하지 않을 경우, Swift가 불필요한 값을 만들지 않도록 밑줄을 사용해야함!

for _ in 0...3 {
    print("Loop 반복문 테스트") // 총 4번 반복함
}

for song in 4...6 {
    print("뉴진스의 \(song)번째 노래")
}

var numbers = [1, 2, 3, 4, 5, 6]
for number in numbers {
    if number % 2 == 0 {
        print(number)
    }
}  // 2, 4, 6 (3번 출력됨)

for number in [2, 3, 5] {
    print("\(number) is a prime number.")
}

// 잘못된 예시
// loop에서는 tuple을 이렇게 사용할 수 없다.
// var speeds = (65, 58, 72)
// for speed in speeds {
//     print("You were driving at \(speed)km/h.")
//


// 2. While loops
// let상수를 쓰면 수정할 수 없으니 var변수로 사용하기
var number = 1
while number <= 5 {
    print(number)
    number += 1
}

// 위에걸 반대로 작성해서 타이머처럼 활용해보면?
var number1 = 5
while number1 >= 1 {
    print(number1)
    number1 -= 1
}
print("이제 시작합니다! ") // 5,4,3,2,1 출력되고, 해당 String 출력됨

// 주사위 굴리기 예시
let colors = ["빨간색", "주황색", "노랑색", "초록색", "파란색"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colors[colorCounter])은 가장 인기 있는 색상입니다.")
    colorCounter += 1
}

//counter가 64보다 작을때까지 반복
var counter = 2
while counter < 64 {
    print("\(counter)는 2의 제곱입니다.")
    counter *= 2
        }


//kids가 10보다 작을때까지 "아이스크림 더 사고 싶다"고 프린트 하지만,
//만약 kids가 4가 되었을때는 "충분해!"라고 출력
var kids: Int = 0
while kids < 10 {
    print("아이스크림을 더 사고 싶어")
    kids += 1
if kids == 4 {
    print("충분해!")
    kids = 10
}
}



// 3. Repeat loops
var number2 = 1
repeat {
    print(number2)
    number2 += 1
}   while number2 <= 5
print("Ready or not, here I come!")

