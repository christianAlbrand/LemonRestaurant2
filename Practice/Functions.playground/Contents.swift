import UIKit

// Functions
/*
 Syntax
 
 func functionName(parameter1: Type,parameter2: Type) -> returnType{
    // function body
    // logic goes here
    return value
 }
 */

// Example 1 - no param, no return
func printWelcome(){
    print("Hello cohort #11")
}

printWelcome()

// Example 2 - 1 param

func greet(person: String) -> String {
    let greeting = "Hello " + person + "!"
    return greeting
}

let message = greet(person:"Christian")
print (message)

// Example 3 -2 parameters

func add(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

var result = add(number1: 10, number2: 20)
print(result)

// Example 4 - unamed parameters
func mult(_ number1:Int, _ number2:Int) -> Int {
    return number1 - number2
}
result = mult(10, 20)
print(result)


func welcomeStudent(_ name:String) -> String {
    return "Welcome, \(name)! Ready to learn swift?"
}

print(welcomeStudent("Christian"))

func deliveryStatus(_ minutes: Int) -> String {
    if minutes == 0 {
        return "Your order is ready now!"
    } else if minutes <= 15 {
        return "Almost there - ready in \(minutes) minutes"
    } else if minutes <= 45 {
        return "On its way - ready in \(minutes) minutes"
    } else {
        return "Running late. Estimated time: \(minutes) minutes"
    }
}

func serviceFee(_ total: Double) -> Double {
    if total <= 20 {
        return 0.0
    } else if total <= 50 {
        return 0.1 * total
    } else if total < 100 {
        return 0.15 * total
    } else {
        return 0.20 * total
    }
}

func finalBill(_ total: Double) -> String {
    let fee = serviceFee(total)
    let finalBillFee = total + fee
    return "Bill: $\(String(format: "%.2f", total)) + fee: $\(String(format: "%.2f", fee)) = total: $\(String(format: "%.2f", finalBillFee))"
}

print(finalBill(15))
print(finalBill(35))
print(finalBill(10))
