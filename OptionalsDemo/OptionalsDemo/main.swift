//
//  main.swift
//  OptionalsDemo
//
//  Created by Muhammet BOZKURT on 7.04.2023.
//

let myOptional: String?
myOptional = "Angela"
//////////////////////////////////////////////////
//let text: String = myOptional // not valid
// force unwrapping

// let text: String = myOptional! // force unwrap // has risks // build might be ok but might crash if myOptional is nil
//////////////////////////////////////////////////
// safer way // check for nil value

//if myOptional != nil {
//    let text: String = myOptional!
//} else {
//    print("myOptial was found nil")
//}
////////////////////////////////////////////////////
// most common // optional binding

//if let safeOptional = myOptional {
//    let text: String = safeOptional
//} else {
//    print("myOptional was found nil")
//}
/////////////////////////////////////////////////////
// nil coalescing operator

let text: String = myOptional ?? "I am the default value"
// if it has value use optional one if not use the right hand side
print(text)


struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method")
    }
}

let myStructOptional: MyOptional?
myStructOptional = MyOptional()
print(myStructOptional?.property) // Optional chaining 
