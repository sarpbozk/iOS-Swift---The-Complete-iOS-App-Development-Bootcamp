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

let neighbours = [muhammet, jack, nemo] // animal array

func findNemo(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish = animal as! Fish
            fish.breatheUnderWater()
        }
    }
}

findNemo(from: neighbours)

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
