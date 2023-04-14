import UIKit
func greet(sayHi greeting: String) -> String {
    // use internal parameter name here
    let myGreet = greeting
    return myGreet
}
// use external parameter name outside of the function
print(greet(sayHi: "hello world"))


