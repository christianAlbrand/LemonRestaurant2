/*
 ------ FILTER -------
 Array method that creates a ne array containing only elements that ssatisfy a given condition.
 Filter keeps only the items that return true.
 It does not modify the original array, it returns a new one.
 
 -- Syntax --
 collection.filter { $0 conition }
 
 */

print("\n-- FILTER --")

print("\n-- Filter: Numbers (Even Numbers) --")
let numbers = [1, 2, 3, 4, 5, 6]
let evenNumbers = numbers.filter{ $0 % 2 == 0 }
print(evenNumbers)

print("\n-- Filter: Number (Multiples of 3) --")
let multiplesOfThree = numbers.filter{ $0 % 3 == 0 }
print(multiplesOfThree)

print("\n-- Filter: Number (Greater than 5) --")
let values = [2, 41, 16, 1, 35, 11]
let bigValues = values.filter{ $0 > 5 }
print(bigValues)

print("\n-- Filter: Dictionary (Names with more that 5 letters) --")
let students = [
    "Stephen": 29,
    "Christian": 11,
    "Brittany": 26,
    "Leo": 32,
]

let longNames = students.filter{ $0.key.count > 5 }
print(longNames)

print("\n-- Filter: Dictionary (Dishe price < 10) --")
let dishes = [
    "Pizza": 10.50,
    "Salad": 9.99,
    "Pasta": 11.00,
    "Coffee": 3.50,
    "Chips": 5.00,
]

let budgetDishes = dishes.filter{ $0.value < 10 }
print(budgetDishes)

print("\n-- Filter: Array (Items containing 'Salad' or 'Fruit') --")
let vegetarianMenu = ["Salad", "Cesar Salad", "Pasta", "Fruit", "Chips", "Coffee"]
// use filter to get dishes that contains salad or fruit in their names, print them
let filteredMenu = vegetarianMenu.filter{ $0.contains("Salad") || $0.contains("Fruit") }
print(filteredMenu)

