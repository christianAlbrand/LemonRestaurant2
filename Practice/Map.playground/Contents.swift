/*
 ----- MAP ------
 Array method that transforms each element of a collection and returns a new array containing
 the transformed value.
 
 it does not modify the original value.
 
 -- Syntax --
 
 collection.map { $0 }
 */

print("\n-- Map: Numbers (Double each number) --")

let numbers = [1, 2, 3, 4, 5, 11]

let doubled = numbers.map { $0 * 2 }
print(doubled)

let desserts = ["cake", "pie", "brownie", "tarte"]

let emojiMenu = desserts.map {"🍰 \($0)"}
print(desserts)
print(emojiMenu)

print("\n-- Map: Strings (Capitalize Names) --")
let names = ["Brittany", "Christian", "Stephen", "Leo"]
let uppercaseNames = names.map { $0.uppercased() }
print(uppercaseNames)
