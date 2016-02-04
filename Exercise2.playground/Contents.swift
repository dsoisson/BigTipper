/*:

**Exercise:** Get Acquainted. Get a few properties of each person in your class... name and email are good. Use the `String` and `Character` as well as the data types and operators in [Basics | Data Types | Operators](Basics%20|%20Data%20Types%20|%20Operators) to complete this exercise.

>> **Example Output:**

* `My name is Mathew Sheets, my email is swift.dude@gmail.com.`

* `Other students in my class are Annie, Sam, Jack, Hudson, Oliver.`

* `Oliver dropped this class.` (**use the second string to pull out the last persons name.**)

* `Other students in my class are Annie, Sam, Jack, Hudson and CARSON was added.`  (**use the second string and append another person.**)

* `Jack and Hudson are in the class.` (**use the second string to pull out third and fourth person.**)

*/
import UIKit

var students = (name: "Mathew Sheets", email: "swift.dude@gmail.com")
var someString = "Other students in my class are Annie, Sam, Jack, Hudson, Oliver."
var newStudent = "Carson"

print("My name is \(students.0), my email is \(students.1)")

print(someString)

let range = someString.endIndex.advancedBy(-7)..<someString.endIndex.advancedBy(-1)
let subString = someString[range]
print("\(subString) dropped this class.")

someString.replaceRange(range, with: newStudent.uppercaseString)

let student1 = someString[someString.startIndex.advancedBy(43)...someString.startIndex.advancedBy(46)]
let student2 = someString[someString.startIndex.advancedBy(49)...someString.startIndex.advancedBy(54)]
print("\(student1) and \(student2) are in the class.")

//use nested tuples instead

var students1 = (
    (firstname: "Duane", lastname: "Soisson")
)
