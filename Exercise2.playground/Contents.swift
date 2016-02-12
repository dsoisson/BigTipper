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
import Foundation

//My attempt
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

//Attempt following instructor

//created nested tuples
let allStudents = (
    (first: "Duane", last: "Soisson", email: "dsoisson@live.com"),
    (first: "Maria", last: "Soisson", email: "msoisson@email.com"),
    (first: "Katerini", last: "Soisson", email: "ksoisson@email.com"),
    (first: "Eleni", last: "Soisson", email: "esoisson@email.com"),
    (first: "Sophia", last: "Soisson", email: "ssoisson@email.com")
)

//created constant to represent new student
let newStudents = (first: "Howard", last: "Soisson", email: "hsoisson@email.com")

//create string with 4 other students from tuple
var otherStudents =  "Other students in my class are \(allStudents.1.first), \(allStudents.2.first), \(allStudents.3.first), and \(allStudents.4.first)."

//create individual student constants by unpacking tuple
let firstStudent = allStudents.0

//determine position of the last student in otherStudents so that it can be copied to another separate string
let lastStudent = allStudents.4 //create string constant with just last student of tuple
let lastStudentToFind = " and \(lastStudent.first)" //create a the string that needs to be found within the second string (otherStudents)
let lastStudentRange = otherStudents.rangeOfString(lastStudentToFind)! //use the lastStudentToFind string to match its counterpart in the second string and determine its range
let lastStudentStrTmp = otherStudents.substringWithRange(lastStudentRange) //use the range found to create the final string to be removed from second string
let lastStudentStr = lastStudentStrTmp.substringFromIndex(lastStudentStrTmp.startIndex.advancedBy(4)) //make the final string by substring by advancing 4 past the first position to end

let newOtherStudents = otherStudents.substringToIndex(otherStudents.endIndex.advancedBy(-lastStudentToFind.characters.count))

let secondStudent = allStudents.2.first
let secondStudentRange = otherStudents.rangeOfString(secondStudent)!
let secondStudentStr = otherStudents.substringWithRange(secondStudentRange)

let thirdStudent = allStudents.3.first
let thirdStudentRange = otherStudents.rangeOfString(thirdStudent)!
let thirdStudentStr = otherStudents.substringWithRange(thirdStudentRange)

print("My name is \(allStudents.0.first) \(allStudents.0.last), my email address is \(allStudents.0.email)")
print(otherStudents)
print("\(lastStudentStr) dropped this class.")
print("\(newOtherStudents) and \(newStudents.first.uppercaseString) was added.")
print("\(secondStudentStr) and \(thirdStudentStr) are in the class.")







