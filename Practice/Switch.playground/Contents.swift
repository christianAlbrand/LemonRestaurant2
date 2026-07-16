/*
 
 -----Switch statement------
 Lets you compare one value against multiple possible cases and run different code depending on which cases matches. It's used when you want to check many conditions in clean, organized way
 
 -- syntax --
 
 switch value {
 case pattern1:
    // code to run if value matches patter1n
 
case pattern2
    // code to run if value matches patter2
 
 default:
    // code to run if no cases macth
 }
 
 */

print("---- SWITCH STATEMENT ------")

print("\n-- Numbers (INT) ---")
let number:Int = 1

switch number {
case 1:
    print("Number One")
case 2:
    print("Number two")
default:
    print("Other number")
}

print("\n ----Numbers (int) ----")
let position:Int = 5

switch position {
case 1:
    print("First position")
case 2:
    print("Second position")
case 3:
    print("Third position")
default:
    print("You placed \(position)")
}

print("\n ---- Text (String), Matching multiple values ----")
let grade:String = "A"

switch grade {
case "A",  "A+":
    print("You got an A")
case "B", "B+":
    print("You got an B")
case "C":
    print("You got an C")
default:
    print("Try again")
}

print("\n --- Numbers(Int), using range ---")
let score:Int = 99

switch score {
case 90...100:
    print("Grade A")
case 80..<90:
    print("Grade B")
case 70..<80:
    print("Grade C")
default:
    print("Fail")
}

print("\n -- Boolean (Bool) ---")
let isVip:Bool = true

switch isVip {
case true :
    print("Welcome VIP")
case false:
    print("Standard guest")

//default:
//    print("Wrong value")
}

print("\n --Using where clause ---")
let age:Int = 17

switch age {
case let x where x < 13:
    print("Child")
case let x where x < 18:
    print("Teenager")
default:
    print("Adult")
}

/*
 -- Mini challenge --
 
 - Create a variable called day
 - use switch to print
    - "Weekend" for saturday or sunday
    - "Weekday" for monday-friday
    - "Invalid day" for anything else
 */

var day:String = "monday"

switch day {
case "saturday", "sunday":
    print("Weekend")
case "monday", "tuesday", "wednesday", "thursday", "friday":
    print("Weekday")
default:
    print("Invalid day")
}


/*
 -- Mini challenge --
 
 create a vatiable called temperature (int)
 Use a switch to print
    -"Cold" for 0...59
    -"warm" for 60...79
    -"hot" for 80...100
    -"out of range " for anything else
 */

var temperature:Int = 49

switch temperature {
case 0...59:
    print("Cold")
case 60...79:
    print("Warm")
case 80...100:
    print("hot")
default:
    print("Out of range")
}


