import UIKit

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("typing away")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("breathing underwater")
    }
}

let muhammet = Human(n: "Muhammet Bozkurt")
let jack = Human(n: "Jack Bauer")
let nemo = Fish(n: "Nemo")
let num = 12

let neighbours: [Any] = [muhammet, jack, nemo] // animal array
             // flex // if it is AnyObject it'll give error because AnyObject only uses classes, can't use structs
func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish = animal as! Fish
            fish.breatheUnderWater()
        }
    }
}

//findNemo(from: neighbours)

//let fish = neighbours[1] as! Fish // will give error // not fish and we are forcing it to be a fish
// use ? instead of ! if you are unsure that it will fit in
// use as with no signs when you are going for superclasses of the current class // for example fish to animal
// use any if you want flexibility

//let neighbours1 = neighbours[0] // still animal
//
//let myDouble = 0.0
//let doubleAsAnInt = Int(myDouble) // like this but not this // this is initializing
//
//if neighbours[0] is Human { // compares among animals
//    print("First neighbour is human")
//}
//if jack is Human { // always true
//    print("jack is human")
//}
