import UIKit

extension Double {
    func round(to places: Int) -> Double {
        let precisionNumber = pow(10, Double(places))
        var n = self
        n *= precisionNumber
        n.round()
        n /= precisionNumber
        return n
    }
}

var myDouble = 3.14159
//let myRoundedDouble = String(format: "%.1f", myDouble)
//print(myRoundedDouble)
/*
myDouble *= 1000
myDouble.round()
myDouble /= 1000
*/

print(myDouble.round(to: 3))
