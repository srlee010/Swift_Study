//: [Previous](@previous)

import Foundation

// #1
let g1 = 123
// print(g2) // 하단에 g2가 선언되어있지만 출력못하는 이유는 7번라인까지만 실행했기 때문, g2가 선언된 줄까지 코드를 실행시키면 출력 가능
//위와 같은 접근은 Global Scope에서만 허용되므로 헷갈리면 안됨

func doSomething() {
    
    // #3
    let local1 = 123
    let g1 = 456
    print(g1)
    
    if true {
        // #4
        let local3 = 123
    }
    
    // #5
    let local2 = 123
}

// #2
let g2 = 456
// print(g1)

struct Scope {
    // #6
    /* print(g1) 여기서 에러나는 이유? print는 값을 출력하는 코드지 선언하는 코드는 아니어서 local Scope에서는 사용 불가! */
    var a = g1 // 변수나 상수선언 코드가 와야 에러가 사라지고 g1 에 접근할 수 있다
    
    func doSomething() {
        // #7
        //print(g1)
        //print(g2)
    }
}

doSomething()
