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

print("My name is", students[0][0], students[0][1],", my email is", students[0][2])
print("Other students in my class are", students[1][0], students[2][0], students[3][0], students[4][0], "and",students[5][0],".")

var studentToDrop = "Oliver"
var studentToAdd = "Carson"
var index = 0
var studentFound = false



for name in students[students.indices]{
    index += 1
    if name.first! == studentToDrop {
        studentFound = !studentFound
    }
}

if studentFound {
    print("\(studentToDrop) was found at Index \(index) in this class and will be dropped.")
    students.removeAtIndex(index-1)
} else {
print("\(studentToDrop) is not in this class and cannot be dropped.")
}

students



//: [Next](@next)
