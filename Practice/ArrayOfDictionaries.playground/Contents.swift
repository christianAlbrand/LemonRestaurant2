/*
 
 -- Array Syntax --
 var/let arrayName:[DataType] = [value1, value2, ...]
 
 -- Dictionary Syntax --
 var/let dictionaryName:[keyType:valueType] = [
    key1:value1,
    key2:value2,
    key3:value3,
    ...
 ]
 
 -- for-in loop syntax --
 for loopvariable in collection{
    // code to repeat
 }
 
 -- forEach syntax
 collection.forEach { element in
    // code to repeat
 }
 */


print("-- ARRAY OF DICTIONARIES --")
print("\n-- Menu items --")
let menuDishes:[[String:String]] = [
    ["name": "Pizza", "price": "12"],
    ["name": "Pasta", "price": "10"],
    ["name": "Salad", "price": "8"],
]

//destruct

print("\n-- Looping through menuDishes (for-in loop) --")
for dish in menuDishes {
    print(dish["name"] ?? "Unknown Dish name")
    print(dish["price"] ?? "Unknown Dish price")
}

print("\n-- Looping through menuDishes Example 2 (for-in loop) --") // destructuring the values

for dish in menuDishes {
    for (key, value) in dish {
        print(key)
    }
}

print("\n-- Looping through menuDishes (forEach) --")
menuDishes.forEach { dish in
    dish.forEach{ (key, value ) in
        print(key, value)
    }
}

/*
    -- mini challenge --
 print only the dishes with a price higher than 10 of menuDishes array
 */

print("\n -- Mini-Challenge: Dish with pice higher than 10 --")

for dish in menuDishes {
    let price = Int(dish["price"] ?? "0")
    if price! > 10 {
        print(dish)
    }

}

// solution 2
for dish in menuDishes {
    let priceSString = dish["price"] ?? "0"
    if let price = Int(priceSString), price > 10 {
        print(dish["name"]!)
    }

}


let menuDrinks = [
    ["name": "Water", "price": "2"],
    ["name": "Soda"],
    ["name": "Coffee", "price": "4"],
    ["price": "3"],
    
]


print("\n -- mini challenge, Detect missing fields")
for dishMissingField in menuDrinks {
    let dishName = dishMissingField["name"]
    let dishPrice = dishMissingField["price"]
    
    if dishName == nil {
        print("Missing Name Field \(dishMissingField)")
    }
    
    if dishPrice == nil {
        print("Missing Price Field \(dishMissingField)")
    }
    
//    for (name, value) in dishMissingField {
//        if dishName == nil {
//            
//        }
//    }
    
}
