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
