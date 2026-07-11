import UIKit

// IF - ELSE If - ELSE
/*
 | ---SYNTAX ---
 
 if condition1 {
    this block runs if condition1 is true
 }else if condition2{
    rhis block runs if the condition2 is true
 }else{
 this block runs if none of the above conditions are true
 }

 */

// |--- Example 1---|
var guest:Int = 7
let capacity:Int = 10

if guest > capacity {
    print("Over capacity")
}else{
    print("We can seat this party")
}

// |--- Example 2 ---|
let rating = 4.2
if rating >= 4.5{
    print("Excellent")
}else if rating >= 3.5{
    print("Good")
}else{
    print("Needs improvements")
}

// |--- Example 3: Bool --|
let isOpen = true
let hasOutdoorSeating = true

if isOpen && hasOutdoorSeating{
    print("Open whith ourdoor seating")
}else if isOpen && !hasOutdoorSeating{
    print("Open indoor only")
}else{
    print("Closed!")
}

// |--- Example 4: Comparing strings ---|
let userName = "Ken"

if userName == "Ken"{
    print("Welcome, Ken!")
}else{
    print("Uknown user")
}

// |--- Example 5: ternary ---|
let price = 12.0
let label = price > 10 ? "Premium" : "Regular"
print(label)


let group = 10
let children = 2
if group > 8 && children > 0{
    print("Clients need to call the manager")
    print("Kids menu")
}else if group < 8 && children > 0{
    print("Kids menu")
}else if group >= 8 && children <= 0{
    print("Large group - call manager")
}else{
    print("standar seating")
}

let VIP = false ? "VIP" : "Not VIP"
print(VIP)
