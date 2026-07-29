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


// Session#2
print("\n-- Movie Struct --")

struct Movie {
    var title: String
    var director: String
    var genre: String?
    var year: Int
    
    func printSummary() {
        print("\(title) (\(year)) (\(genre ?? "No genre provided")) - Directed by \(director)")
    }
}

// Creating instances
let interstellar = Movie(
    title: "Interstellar",
    director: "Christopher Nolan",
    year: 2014
)

let darkKnight = Movie(
    title: "The Dark Knight",
    director: "Christopher Nolan",
    year: 2008
)

let toyStory = Movie(
    title: "Toy Story",
    director: "John Lasseter",
    year: 1995
)

let spiderManH = Movie(
    title: "Spider-Man: Homecoming",
    director: "Jon Watts",
    year: 2017
)

let HarryPotter = Movie(
    title: "Harry Potter",
    director: "Chris Columbus",
    year: 2001
)

interstellar.printSummary()
darkKnight.printSummary()
toyStory.printSummary()
spiderManH.printSummary()
HarryPotter.printSummary()

// Array of structs

var movies: [Movie] = [interstellar, darkKnight, toyStory, spiderManH, HarryPotter]

print("\n-- Loop through movies array using for-in --")
for movie in movies {
    movie.printSummary()
}

print("\n-- Loop through movies array using forEach")
movies.forEach{ movie in
    movie.printSummary()
}

/*
 mini challnge
 
 1. Add the propery genre to the Movie struct
 2. create 1 extra movie and add it to the array
 3. Loop through the array and print only movies released after  2000, and don't forget to also show the genre property
 
 */

print("\n-- Mini chllenge --")

let shrek = Movie(title: "Shrek", director: "Andrew Adamson", genre: "Fantasy", year: 2001)
movies.append(shrek)
for movie in movies {
    if movie.year > 2000{
        movie.printSummary()
    }
}
