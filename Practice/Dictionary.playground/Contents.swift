/*
  ----- DICTIONARY ------
  Unordered collection that stores key-value pairs.
  - Each key must be unique
  - Each key maps to a value
  - Keys and values can be any type, but all keys must share the same type, and all values ust share the same type
 
 -- Syntax --
 var/let dictionaryName:[keyType:valueType] = [
    key1:value1,
    key2:value2,
    key3:value3,
    ...
 ]
 */

print("----- DICTIONARY ------")

print("\n-- String values --")
let studentInformation:[String:String] = [
    "firstName":"John",
    "lastName":"Doe",
    "cohort":"11",
    "email":"john@doe.com"
]

print(studentInformation)

print("\n-- Accessing values --")
print(studentInformation["firstName"] ?? "Not Fund")
print(studentInformation["cohort"]!)
print("keys: \(studentInformation.keys)")

print("\n-- Looping through studentInformation (for loop)--")


for (key, value) in studentInformation {
    print("\(key) \(value)")
}

print("\n-- Looping through studentInformation (forEach)--")

//destructure information (key, value)
studentInformation.forEach { (key, value) in
    print("\(key) \(value)")
}

print("\n--string values --")
let courseInformation: [String: String] = [
    "courseName": "iOS Development",
    "courseCode": "MDI1-102",
    "schedule": "Mon-Thu 5 PM"
]

print(courseInformation["courseName"] ?? "Not found")
// if you don't have the key or is null it should say that ⬇️
print(courseInformation["instructor"] ?? "Instructor not found")

print("\n-- Looping throught courseInformation (for-in loop) --")

for (key, value) in courseInformation {
    print("\(key) \(value)")
}

print("\n-- Looping throught courseInformation (forEach loop) --")
courseInformation.forEach { (key, value) in
    print("\(key) \(value)")
}

print("\n-- Int values --")
var servingsAvailable: [String: Int] = [
    "Pizza": 12,
    "Pasta": 7,
    "Salad": 8
]

print(servingsAvailable)

print("\n-- Add a new item --")
servingsAvailable["Soup"] = 4// this push a new key value to dictionary
print(servingsAvailable)

print("\n-- Update an existing item --")
servingsAvailable["Pasta"] = 10// update an item
print(servingsAvailable)

print("\n-- Remove an existing item --")
servingsAvailable["Soup"] = nil // removes an item
print(servingsAvailable)

print("Today we have \(servingsAvailable.count) dishes in the stock")

print("-- Get all keys --")
servingsAvailable.forEach { (key, _) in
    print(key)
}

//print(servingsAvailable.keys) another solution

print("-- Get all values --")
servingsAvailable.forEach{ (_, value) in
    print(value)
}
//print(servingsAvailable.values) another solution

print("\n-- Double Values --")
var dishPrice:[String:Double] = [
    "Pizza": 12.99,
    "Pasta": 10.99,
    "Salad": 6.99
]

print(dishPrice["Pasta"] ?? "Dish not found")

/*
    -- Mini-Challenge "Ingredients Dictionary" --
 
    start with this dictionary:
    var ingredients = [
        "Tomato": 888,
        "Chesse": 16,
        "Garlic": 6,
        "Potato": 12,
        "Mushroom": 10,
        "Spinach": 2
    ]
 
    Add/Update the nwe ingredients the manage brought:
        8 onions
        24 carrots
        12 letuccew
        3 spnach
 
    Fix the mistakes
        - Tomatoes were incorrectly counted as 8888, but the correct amount is 88
        - Cheese packages were incorrectly counted, there are 0 packages
        
    After one working day, print a full report
        - Show each ingredient and its amount.
 
 */

var ingredients:[String:Int] = [
    "Tomato": 888,
    "Chesse": 16,
    "Garlic": 6,
    "Potato": 12,
    "Mushroom": 10,
    "Spinach": 2
]

ingredients["Onions"] = 8
ingredients["Carrots"] = 24
ingredients["Lettuce"] = 12
ingredients["Spinach"] = 3 + (ingredients["Spinach"] ?? 0)

ingredients["Tomato"] = 88
ingredients["Chesse"] = 0

print("-- Report of the day --")
ingredients.forEach { (key, value) in
    print("\(key) \(value)")
}
