//: [Previous](@previous)
/*:
**Exercise:** You have to record all the students for your school. Leveraging arrays, dictionaries, and sets, create table like containers for each class. Your classes are Math, Science, English and History with a total of 17 unique students with 7 students in each class. Print out each class roster and experiment with set operations, membership and equality.
>> **Example Output:**
* `Math = Mathew Sheets, John Winters, Sam Smith`
* `Science = Sam Smith, Carson Daily, Adam Aarons`
* `Union of Math and Science = Mathew Sheets, John Winters, Sam Smith, Carson Daily, Adam Aarons`
>> **Constraints:**
* Use Set Operations
* intersect
* exclusiveOr
* union
* subtract
* Use Set Membership and Equality
* is equal
* isSubsetOf
* isSupersetOf
* isStrictSubsetOf
* isStrictSupersetOf
* isDisjointWith
*/

import Foundation

var students = getStudents()

var allStudents = getEntireClass(&students)
var math = getMathStudents(students)
var mathBoys = getMathBoyStudents(students)
var mathGirls = getMathGirlStudents(students)
var science = getScienceStudents(students)
var english = getEnglishStudents(students)
var history = getHistoryStudents(students)
var classes = getSemester([math, science, english, history]) //where are 'math', 'science', 'english' and 'history'?

print("All \(students.count) students")
for student in students {
    print("\(student["name"]!)") //where is "name"?
}

let classNames = classes.keys
for name in classNames {
    let _class = classes[name]!
    
    print("\(_class.count) \(name) Students")
    
    for student in _class {
        print("\t\(student)")
    }
}



//: [Next](@next)
