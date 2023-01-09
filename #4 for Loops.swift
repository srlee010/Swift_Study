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

//OMG는 뉴진스의 노래입니다.
//Ditto는 뉴진스의 노래입니다.
//Cookie는 뉴진스의 노래입니다.

for _ in 0...3 {
    print("Loop 반복문 테스트") // 총 4번 반복함
}

for song in 4...6 {
    print("뉴진스의 \(song)번째 노래")
}
// 뉴진스의 4번째 노래
// 뉴진스의 5번째 노래
// 뉴진스의 6번째 노래

// 잘못된 예시
// loop에서는 tuple을 이렇게 사용할 수 없다.
 var speeds = (65, 58, 72)
 for speed in speeds {
     print("You were driving at \(speed)km/h.")
}
