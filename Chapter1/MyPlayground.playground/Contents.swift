//: Playground - noun: a place where people can play

import UIKit

var t: Float?
var x: Float?
var y: Float?

t = 9
x = 1.23

if let a1 = t, let a2=x, let a3=y {
    let z = (a1+a2+a3)/3
}else {
    print("Error")
}