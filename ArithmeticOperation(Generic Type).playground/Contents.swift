//: Playground - noun: a place where people can play

import UIKit

protocol NumericType {
    static func +(lhs: Self , rhs: Self) -> Self
    static func -(lhs: Self , rhs: Self) -> Self
    static func /(lhs: Self , rhs: Self) -> Self
    static func *(lhs: Self , rhs: Self) -> Self
    static func ==(lhs: Self , rhs: Self) -> Bool
}

extension Double: NumericType {}
extension Float: NumericType {}
extension Int: NumericType {}

class ArithmeticOperation <T: NumericType> {
    func add(n1: T , n2: T) -> T {
        return n1 + n2
    }

    func sub(n1: T , n2: T) -> T {
        return n1 - n2
    }

    func multiple(n1: T , n2: T) -> T {
        return n1 * n2
    }
    func Divide(n1: T , n2: T) -> T {
 
        return n1 / n2
    }
}

var operation = ArithmeticOperation<Float>()


operation.add(n1: 12, n2: 12)
operation.sub(n1: 12.5, n2: 3)
operation.multiple(n1: 3.2, n2: 4)
operation.Divide(n1: 12, n2: 3.0)



