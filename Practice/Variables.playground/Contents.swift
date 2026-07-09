import UIKit

// variables var
// constants let

var restaurantName = "Little lemon"
print("Welcome to \(restaurantName)")

restaurantName = "Little lemon bistro"
print("Now we are calles \(restaurantName)")

// constants cannot change
let city = "New York"
//city = "Chicago" // Error: Cannot assign to value
print("Our restaurant is located in \(city)")

//Strings
var specialDish = "Pasta primavera"

//Integers
var aviableTables = 5

//Doubles
var dishesPrice = 12.50

//Boolean
var isOpen = true

print("Today's special: \(specialDish) - $\(dishesPrice)")

//Cahllenge #1
var numberOfTables = 10
let ownerName = "Christian"

print("Little lemon has \(numberOfTables) tables and is owned by \(ownerName)")

//Challenge #2
var wave = "Hello!"
var numOfPlayer = 4
var coins = 233.12
var continueGame = true
print("\(wave) player \(numOfPlayer) you have \(coins) coins! do you wish to continue the game? \(continueGame)")

//data types
// we can also explicity define the types

var anotherDish: String = "Pizza"
var tableCount: Int = 10
var price: Double = 8.99
var openTable: Bool = true

// use math operator
let pastaPrice: Double = 10.50
let saladPrice: Double = 6.25
let total = pastaPrice + saladPrice
print("The total is \(total)")

//Add a 15% tip to the total and print the final amount
let tip = total * 0.15
print ("The tip is \(tip)")
let totalWithTip = total + tip
print ("The total with tip is \(totalWithTip)")
