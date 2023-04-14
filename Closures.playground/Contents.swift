import UIKit

func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}


func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}

calculator(n1: 2, n2: 3, operation: add)
// // // // // // // // // // // // // // // // // // // // // // // //
func multiply(no1: Int, no2: Int) -> Int {
    return no1 * no2
}
calculator(n1: 2, n2: 3, operation: multiply)


calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2) -> Int in
    return no1 * no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2) in
    return no1 * no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2) in
 no1 * no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2) in no1 * no2 })

calculator(n1: 2, n2: 3, operation: {$0 * $1})

let result = calculator(n1: 2, n2: 3) {$0 * $1}

// multiplication by a closure instead of the lines above
// every line is shorter and does the same job as the previous
//$0 first parameter $1 second parameter

