/*
 ------ Struct --------
 
Custom data type that lets you group related values and behaviours together.
 Struct is like a blueprint.
 
 -- Syntax --
 struct StructName {
    var/let propertyName1: ElementType
    var/let propertyName2: ElementType
 
    func functionName() {
        //function body
    }
 }
 
 -- Creating and instance of a struct --
 let/var instanceName = StructName(propertyName1:value1, propertyName2: value2)
 */

struct MenuItem {
    var name: String
    var price: Double
    var image: String
    
    func printInformation() {
        print("Dish: \(name), Price: \(price), Image: \(image)")
    }
}

print("\n-- Creating instances --")
let pizza = MenuItem(name: "Pizza", price: 12.0, image: "pizza.png")
print(pizza)

print("\n-- Accessing properties --")
print(pizza.name)
print(pizza.price)
print(pizza.image)

let pasta = MenuItem(name: "Pasta", price: 10.0, image: "pasta.png")
print(pasta.price)

pizza.printInformation()

print("\n--Mini challenge, create a MenuItem instance of your favorite dish--")
let enchiladas = MenuItem(name: "Enchiladas Verdes", price: 20.50, image: "enchiladas.png")
print(enchiladas.name)
print(enchiladas.price)
print(enchiladas.image)

enchiladas.printInformation()

struct Customer {
    var name: String
    var email: String
    var visits: Int
    
    func loyaltyStatus() {
        if visits > 3 {
            print("\(name) is a ⭐️ Loyalty Member")
        } else {
            print("\(name) is a Regular Customer")
        }
    }
}

let christian = Customer(name: "Christian", email: "christian@email.com", visits: 5)
let john = Customer(name: "John", email: "john@email.com", visits: 1)
let jane = Customer(name: "Jane", email: "jane@email.com", visits: 10)
let alex = Customer(name: "Alex", email: "alex@email.com", visits: 0)

for customer in [christian, john, jane, alex] {
    customer.loyaltyStatus()
}

/*
 -- Mini challenge --
 
 1. Create a struct called "Book"
    - Properties; title(String), author(String), pages(Int)
    - Add a funvtion called "printDetails" that print:
        "Title:xxxx, Author:xxxx, Pages:xxxx"
 
 2. Create at least 2 instances of Book
 
 3. Execute in every instance the function printDetails
 */

print("\n-- Mini challenge 2 --")

struct Book {
    var title: String
    var author: String
    var pages: Int
    
    func printDetails() {
        print("Title: \(title), Author: \(author), Pages: \(pages)")
    }
}

let book1 = Book(title: "Swift", author: "Christian", pages: 100)
let book2 = Book(title: "Lord of The Rings", author: "Walter", pages: 300)

for book in [book1, book2] {
    book.printDetails()
}

print("\n-- Drinks Struct --")
struct Drink {
    var name: String
    var size: String // enumerate
    var price: Double
    var isCold: Bool
    
    func printDetails() {
        let type = isCold == true ? "Cold Drink" : "Hot Drink" // ternary operator
        print("Drink: \(name), Size: \(size), Price: \(price) - \(type)")
    }
}

// Instances
let coffee = Drink(name:"Coffee", size:"Medium", price: 6.75, isCold: false)
let tea = Drink(name: "Tea", size: "Large", price: 7.00, isCold: false)
let juice = Drink(name: "Orange Juice", size: "Large", price: 4.00, isCold: true)

coffee.printDetails()
tea.printDetails()
juice.printDetails()



