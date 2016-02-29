//: [Previous](@previous)
/*:
**Exercise:** Get Acquainted. Get a few properties of each student in your class... name and email are good. Use the `String` and `Character` as well as the data types and operators in [Basics | Data Types | Operators](Basics%20|%20Data%20Types%20|%20Operators) to complete this exercise.
>> **Example Output:**
* `My name is Mathew Sheets, my email is swift.dude@gmail.com.`
* `Other students in my class are Annie, Sam, Jack, Hudson and Oliver.`
* `Oliver dropped this class.` (**use the second bullet point string to pull out the last students's name.**)
* `Other students in my class are Annie, Sam, Jack, Hudson and CARSON was added.`  (**use the second bullet point string and append another student.**)
* `Jack and Hudson are in the class.` (**use the second bullet point string to pull out third and fourth student.**)
>> **Constraints:**
* Use a nested tuple to hold your students
* Use the string created from the second bullet point for all other string creation
*/

import Foundation

var students = [["Matthew", "Sheets", "swift.dude@gmail.com"],["Annie", "Sheets", "annie@email.com"], ["Sam", "Sheets", "sam@email.com"], ["Jack", "Sheets", "jack@email.com"],["Hudson", "Sheets", "hudson@email.com"], ["Oliver", "Sheets", "oliver@email.com"]]

print(intro(students))

print(otherStudents(students))


var studentToDrop = "Oliver"

dropStudent(students, student: studentToDrop)
students.removeLast()
students
var studentToAdd = ["Carson", "Sheets", "carson@email.com"]

students.append(studentToAdd)

let allCapsName = students[5][0].uppercaseString
//allCapsName![0].uppercaseString
print("Other students in my class are", students[1][0], students[2][0], students[3][0], students[4][0], "and",allCapsName)


//: [Next](@next)
