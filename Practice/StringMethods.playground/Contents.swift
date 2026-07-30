let  greeting = "hello world"

print(greeting.uppercased()) // HELLO WORLD

print(greeting.lowercased()) // hello world

print(greeting.capitalized) // Hello world

let spaced = " Swift "
print(spaced.trimmingCharacters(in: .whitespaces)) // " Swift " -> "Swift"

let phrase = "Hello World"
print(phrase.replacingOccurrences(of: "World", with: "Christian")) // Hello Wolrd -> Hello Christian

// Searching
let text = "Swift is fun"
print(text.contains("fun")) // true
print(text.hasPrefix("Swift")) // true
print(text.hasSuffix("fun")) // true

// Substring
let letter = "abcdefg"
print(letter.prefix(3))// abc, return the first n characters of a string
print(letter.suffix(2))// ef
print(letter.dropFirst())// removes first element
print(letter.dropLast())// removes last element
print("a,b,c".split(separator: ","))

// counting & checking
print("Hello".count)
print("".isEmpty)

// Converting
let numberString = "123" // string
print(Int(numberString) ?? 0) // coalescing operator

let piString = "3.14" // String
print(Double(piString) ?? 0.0)

// Extras
let word = "Swift"
print(String(word.reversed()))
