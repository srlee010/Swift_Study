
// Day 5 π₯―
// 1. Writing Functions
// ν¨μ νΈμΆ ν€μλ func
// λ§€κ°λ³μλ μκ΄νΈλ‘ κ°μΈμ€λ€ ()
// λ§€κ°λ³μλ ν¨μλ₯Ό μ μν  λ μΈλΆλ‘λΆν° λ°μλ€μ΄λ μ λ¬ κ°μ μ΄λ¦μ μλ―Έ
// λ°ν ν€μλ return

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
square(number: 3) // 9 μΆλ ₯λ¨

// μμ 1
// func findDirections(from: String, to: String, route: String, avoidHighways: Bool = true)
// μμ μ½λλ₯Ό μ€ννλ €λ©΄ μλμ κ°μ΄ μμ±νλ©΄ λ¨
// findDirections(from: "London", to: "Seoul, route: "sceinc", "avoidHighways: true)

// μμ 2
func makeBand(names: [String]) {
    print("Let's start a band! πΊ")
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



// λ§€κ°λ³μκ° νμ μλ ν¨μ
func helloSora() -> String {
    return "μλ, μλΌμΌ!"
}
print(helloSora())


// λ§€κ°λ³μκ° μ¬λ¬κ°μΈ ν¨μ
func welcome(myname: String, yourname: String) -> String {
    "μλνμΈμ \(yourname)λ!, μ λ \(myname)μ΄λΌκ³  ν©λλ€."
}
print(welcome(myname: "μλΌ", yourname: "νλ")) // μλνμΈμ νλλ!, μ λ μλΌμ΄λΌκ³  ν©λλ€.


// μ λ¬μΈμλ μ΄λΈ μ§μ νλ λ²?
// ν¨μ μ μμμ λ§€κ°λ³μ μ΄λ¦ μμ νμΉΈμ λμ΄ ν μ§μ νλ€.
// μ λ¬μΈμλ μ΄λΈμ λ³λλ‘ μ§μ νλ©΄ ν¨μ μΈλΆμμ λ§€κ°λ³μμ μ­ν μ μ’ λ λͺννκ² ν  μ μμ
// func ν¨μμ΄λ¦ (μ λ¬μΈμλ μ΄λΈ1 λ§€κ°λ³μ1μ΄λ¦ : λ§€κ°λ³μ1νμ) -> λ°ννμ {
// ν¨μ κ΅¬νλΆ
// return λ°νκ°
// }

// μ λ¬μΈμ νμ©μμ (fromκ³Ό toλΌλ μ λ¬μΈμλ μ΄λΈ μ‘΄μ¬)
// myNameκ³Ό youtNameμ΄λΌλ λ§€κ°λ³μ μ΄λ¦μ΄ μλ welcomeμ΄λΌλ ν¨μ
func welcome(from myName: String, to yourName: String) -> String {
    "μλνμΈμ \(yourName) λ!, μ λ \(myName)(μ΄)λΌκ³  ν©λλ€."
}
print(welcome(from: "μλΌ", to: "ν΄λ¦°"))



// 5. Omitting parameter lables
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("μ§μ!")
