// Day 4 ๐ฟ
// 1. For loops

let count = 1...10
for number in count {
    print("Number is \(number)")
}

let albums = ["OMG", "Ditto", "Cookie"]
for album in albums {
    print("\(album)๋ ๋ด์ง์ค์ ๋ธ๋์๋๋ค.")
}

// loop ์ฌ์ฉ ์ let(์์)๋ฅผ ์ฌ์ฉํ์ง ์์ ๊ฒฝ์ฐ, Swift๊ฐ ๋ถํ์ํ ๊ฐ์ ๋ง๋ค์ง ์๋๋ก ๋ฐ์ค์ ์ฌ์ฉํด์ผํจ!

for _ in 0...3 {
    print("Loop ๋ฐ๋ณต๋ฌธ ํ์คํธ") // ์ด 4๋ฒ ๋ฐ๋ณตํจ
}

for song in 4...6 {
    print("๋ด์ง์ค์ \(song)๋ฒ์งธ ๋ธ๋")
}

var numbers = [1, 2, 3, 4, 5, 6]
for number in numbers {
    if number % 2 == 0 {
        print(number)
    }
}  // 2, 4, 6 (3๋ฒ ์ถ๋ ฅ๋จ)

for number in [2, 3, 5] {
    print("\(number) is a prime number.")
}

// ์๋ชป๋ ์์
// loop์์๋ tuple์ ์ด๋ ๊ฒ ์ฌ์ฉํ  ์ ์๋ค.
// var speeds = (65, 58, 72)
// for speed in speeds {
//     print("You were driving at \(speed)km/h.")
//


// 2. While loops
// let์์๋ฅผ ์ฐ๋ฉด ์์ ํ  ์ ์์ผ๋ var๋ณ์๋ก ์ฌ์ฉํ๊ธฐ
var number = 1
while number <= 5 {
    print(number)
    number += 1
}

// ์์๊ฑธ ๋ฐ๋๋ก ์์ฑํด์ ํ์ด๋จธ์ฒ๋ผ ํ์ฉํด๋ณด๋ฉด?
var number1 = 5
while number1 >= 1 {
    print(number1)
    number1 -= 1
}
print("์ด์  ์์ํฉ๋๋ค! ") // 5,4,3,2,1 ์ถ๋ ฅ๋๊ณ , ํด๋น String ์ถ๋ ฅ๋จ

// ์ฃผ์ฌ์ ๊ตด๋ฆฌ๊ธฐ ์์
let colors = ["๋นจ๊ฐ์", "์ฃผํฉ์", "๋ธ๋์", "์ด๋ก์", "ํ๋์"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colors[colorCounter])์ ๊ฐ์ฅ ์ธ๊ธฐ ์๋ ์์์๋๋ค.")
    colorCounter += 1
}

//counter๊ฐ 64๋ณด๋ค ์์๋๊น์ง ๋ฐ๋ณต
var counter = 2
while counter < 64 {
    print("\(counter)๋ 2์ ์ ๊ณฑ์๋๋ค.")
    counter *= 2
        }


//kids๊ฐ 10๋ณด๋ค ์์๋๊น์ง "์์ด์คํฌ๋ฆผ ๋ ์ฌ๊ณ  ์ถ๋ค"๊ณ  ํ๋ฆฐํธ ํ์ง๋ง,
//๋ง์ฝ kids๊ฐ 4๊ฐ ๋์์๋๋ "์ถฉ๋ถํด!"๋ผ๊ณ  ์ถ๋ ฅ
var kids: Int = 0
while kids < 10 {
    print("์์ด์คํฌ๋ฆผ์ ๋ ์ฌ๊ณ  ์ถ์ด")
    kids += 1
if kids == 4 {
    print("์ถฉ๋ถํด!")
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

// repeat loop์์ false์ฌ์ฉํ๋ ๊ฒฝ์ฐ,
// ์ฒ์์ ํ์คํธ ์ถ๋ ฅ ํ, ๋ง์ง๋ง์ while๋ฌธ์ด ์คํ๋๋ฏ๋ก ํ์คํธ๊ฐ ํ๋ฒ์ ์ถ๋ ฅ๋๋ค
// (์ด๊ฑฐ true๋ก ๋ฐ๊พธ๋ฉด ๋ฌดํ ๋ฃจํ๋๋๊น ์กฐ์ฌ ใ )
repeat {
    print("This is false")
} while false

// while loop์์ false์ฌ์ฉ ํ๊ฒ ๋๋ฉด, ์๋ฌด๊ฒ๋ ์ถ๋ ฅ์๋จ
// why? while ์กฐ๊ฑด์ ๋จผ์  ์คํํ๊ธฐ ๋๋ฌธ์ ์ถ๋ ฅํ ๊ฒ ์์

// ํ์ฉ์์
let number3 = [1, 2, 3, 4, 5]
var random: [Int]
repeat {
    random = number3.shuffled()
} while random == number3
print(random)
            
