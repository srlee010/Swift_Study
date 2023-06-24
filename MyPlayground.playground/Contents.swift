import UIKit 
/* ✅ APPLE이 미리 만들어놓은 코드를 가져다 쓰겠다는 의미 (UIkit라는 framework를 가지고 와서 xcode에서 쓰겠다라는 뜻)
 - framework? : 하나의 기능을 선물상자에 담아놓은 키트들 모음 */
import MapKit 
// 지도를 사용하고 싶다면? 이렇게 입력하면 됨
/* 그럼 어떤 프레임워크가 있는지 알아야겠지? 
 https://developer.apple.com에서 레퍼런스를 찾기 */


// ✅ print함수, dump함수
var greeting = "Hello, Swift!~~~!"
print(greeting) //  프로그래밍에서는 함수를 사용한다가 아니라, '호출한다'고 말한다
dump(greeting) // dump함수는 print함수와 동일한데 더 자세하게 출력하는 함수
// print와 dump함수로 값을 출력할 있고, dump함수가 더 자세하게 출력가능하다.
// swift언어는 대소문자를 정확하게 구분한다 왜 안돼는지 아는것도 중요하니 우측 에러메시지를 잘 읽어보기! 그러면 실수도 줄어들고 남들보다 실력이 빨리 늘수있다


// ✅ Variables (변수)
// var varableName = initialValue
var name = "Swift"
var thisYear = 2023
var valid = true

name // 이렇게 쓰면 오직 'playground'에서만 값을 확인할 수 있다.
print(name) // Xcode에서는 print함수나 dump함수로만 값을 출력할 수 있다
dump(valid)
 
// ➡️ 변수에 새로운 값을 저장하고 싶다면? 앞에 var키워드를 쓰지 않는다
// variableName = initialValue
name = "Steve"  // 변수의 값은 누적되는게 아니라, 기존값은 사라지고 완전히 새로운 값으로 변경된다.
name = "윤아" // name변수에는 최종적은로 "윤아"가 출력된다
print(name)

// ➡️ 변수의 값이 바뀌어도 다른 변수에 값은 변하지 않는다!
var anotherName = name // 다른 변수의 저장된 값을 읽어와서 새 변수에 저장하는 것도 가능함
anotherName = "Sora" // anotherName변수에 다른 값을 선언하면 어떻게 될까?
print(anotherName, name) // 변수가 어떤 시점에 같은 값을 저장하고 있더라도 메모리 공간은 다르다! 변수를 선언할 때마다 새로운 메모리 공간을 만들기 떄문에 두 변수는 연결되지 않는다. 즉, 하나를 변경하더라도 다른 변수는 영향을 받지 않는다.



// ✅ Constants (상수)
// 값을 저장한다음에 값을 바꿀 수 없다
// let constantName = initialValue
let name1 = "Yoona"
// name1 = "sora" // 상수는 메모리에 딱 한 번만 값을 저장할 수 있고, 이후에는 새로운 값을 저장할 수 없다.
// 변수와 상수, 처음에 무엇을 선언해야하지? / 1. 일단 상수로 값을 저장 2. 그다음 값을 변경해야한다면 그때 변수로 저장하기
// 상수를 먼저 사용하면 좋은 점 2가지 / 1. 코드가 안전 / 2. 값이 바뀌지 않으면 컴파일러가 최적화를 해서 더 빠른 코드를 만들 수 있다.


//
