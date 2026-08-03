/*
 ------ CLASS -------
 
 Reference type used to define a custom data model that groups together properties and methods.
 
 It acts as a blueprint for creating objects(instances)
 
 -- Syntax --
 
 class ClassName {
    var propertyName1: DataType
    var propertyName2: DataType
 
    //  initializer
    init(propertyName1: DataType, propertyName2: DataType) {
        self.propertyName1 = propertyName1
        self.propertyName2 = propertyName2
 }
 
 // Methods
     func methodName() -> ReturnType {
        // code here
     }
 }
 
 
 // creating and instance (object)
 let objectName = ClassName(property1: value1, property2: value2)
 */

print("\n-- Basic Class: Car --")

class Car {
    var brand: String
    var speed: Int
    
    init(brand: String, speed: Int) {
        self.brand = brand
        self.speed = speed
    }
    
    func accelerate() {
        speed += 10
    }
}

let myCar = Car(brand: "Honda", speed: 50)
print("Car brand: \(myCar.brand)")
print("Car speed: \(myCar.speed)")

myCar.accelerate()
print("Car speed after accelerate: \(myCar.speed)")

print("\n-- Class with method: Dog ---")
class Dog{
    var name: String
    var age: Int
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    func bark() {
        print("\(name) says Woof!)")
    }
}

let dog1 = Dog(name: "Rex", age: 3)
let dog2 = Dog(name: "Toto", age: 5)

dog1.bark()
dog2.bark()

print("\n-- Reference Type Behavior --")
class Weapon {
    var name: String
    var attack: Int
    
    init(name:String, attack:Int) {
        self.name = name
        self.attack = attack
    }
    
    func upgrade() {
        attack += 10
    }
}

// One Weapon in the world
let sharedSword = Weapon(name: "Dragon Sword", attack: 50)

// Two characters EQUIP the SAME sword (reference type)
let knightWeapon = sharedSword
let thiefSword = sharedSword

print("Knight attack: ", knightWeapon.attack)
print("Thief attack: ", thiefSword.attack)

// Knight upgrades the sword
knightWeapon.upgrade()

print("Thief attack after upgrade: ", thiefSword.attack)
print("knight upgraded the sword to: ", knightWeapon.attack)
print("SharedSword attack after upgrade: ", sharedSword.attack)

/*
 
 Struct VS class
 
 Struct are VALUE types
    - When you copy a struct, you get a new independent copy.
 
 class are REFERENCE typess
    - When you copy a class instance, both variables
    - Classes support inheritance
        class Animal {}
        class Dog {}
    - Use claw when:
        - You need inheritance
 */
