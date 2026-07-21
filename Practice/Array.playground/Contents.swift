/*
 ---- ARRAY -----
 Ordered colletction that stores multiple values of the same tyoe in a single varibale.
    - Value are stored in a specific order
    - Each value has an index starting at 0
 
 -- Syntax --
 var/let arrayName:[dataType] = [value1, value2, value3, ...]
 
 
 */

print("----- ARRAYS ------")

print("\n-- Basic Array (String) --")
var dishes: [String] = ["pizza", "pasta", "burger", "salad", "steak"]

print(dishes)
print(dishes[0])
print(dishes[1])
print(dishes[2])
print(dishes.count)

print("\n-- Adding new dish (append) --")

dishes.append("chips")
print(dishes)

print("\n-- Removing an item (remove at index)")
dishes.remove(at: 1)// removes pasta
print(dishes)

/*
String -> "Hello cohort 11"
Int -> 3
Double -> 123.99
Bool -> false
*/

print("\n-- Price Array (Double)")
var prices: [Double] = [9.99, 10.50, 6.00]
print(prices[2])

let total = prices[0] + prices[1]
print("Total for two dishes \(total)")

/*
 Create an array with your top 3 favorite deserts and print them
 */
 
var dessertsFav: [String] = ["Ice creaam", "chocolate", "chips"]
print(dessertsFav)
print(dessertsFav.count)
