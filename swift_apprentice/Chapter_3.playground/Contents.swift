//: Playground - noun: a place where people can play

import UIKit

/*
You earn $25 for every hour up to 40 hours, and $50 for every hour thereafter.
*/

var hoursWorked = 45
var payment = 0

if hoursWorked > 40 {
    let hoursOver40 = hoursWorked - 40
    payment += hoursOver40 * 50
    
    hoursWorked -= hoursOver40
}

payment

payment += hoursWorked * 25

print("Your payment this period is $\(payment). Don't spend it all in one place.")
