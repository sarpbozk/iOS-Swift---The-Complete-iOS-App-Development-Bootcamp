import UIKit

let array = [6, 2, 3, 9, 4, 1]

/*
 func addOne (n1: Int) -> Int {
    return n1 + 1
}

array.map(addOne) */

print(array.map({$0 + 1}))

let arrayAsStringEachElement = array.map{"\($0)"}
print(arrayAsStringEachElement)
