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
public typealias StudentKey = String
public typealias StudentValue = String
public typealias StudentName = String
public typealias ClassName = String

public typealias Student = [StudentKey:StudentValue]
public typealias Students = [Student]
public typealias Class = Set<StudentName>
public typealias Classes = [ClassName:Class]

var students = [
    ["column_1" : "Obi-Wan",   "column_2" : "Kanobi"],
    ["column_1" : "Darth",     "column_2" : "Vader"],
    ["column_1" : "Anakin",    "column_2" : "Skywalker"],
    ["column_1" : "Darth",     "column_2" : "Sidious"],
    ["column_1" : "Padme",     "column_2" : "Amidala"],
    ["column_1" : "Mace",      "column_2" : "Windu"],
    ["column_1" : "Count",     "column_2" : "Dooku"],
    ["column_1" : "Luke",      "column_2" : "Skywalker"],
    ["column_1" : "Han",       "column_2" : "Solo"],
    ["column_1" : "Leia",      "column_2" : "Organa"],
    ["column_1" : "Chew",      "column_2" : "Bacca"],
    ["column_1" : "Boba",      "column_2" : "Fett"],
    ["column_1" : "Lando",     "column_2" : "Calrissian"],
    ["column_1" : "Kylo",      "column_2" : "Ren"],
    ["column_1" : "Poe",       "column_2" : "Dameron"],
    ["column_1" : "Finn",      "column_2" : "FN-2187"],
    ["column_1" : "Rey",       "column_2" : "Rey"]
]
print(students) //prints as an array of dictionaries
print(students[0]["column_1"]) //prints element 0

//This function gets a list of all the students in a class.  It accepts a parameter of type Array of Dictionaries and returns a set of Strings
func getEntireClass(inout students: Students) -> Class {
    
    var allStudents = Class()       //initialize new empty variable as set of Strings
    
    //loop through inout parameter of Array of Dictionaries
    //enumerate returns a lazy sequence type with an integer starting at 0 and the elements
    for (index, var student) in students.enumerate(){
        let name = "\(student["column_1"]!) \(student["column_2"]!)"
        student["name"] = name //this is adding another key-value pair to each dictionary as "name": first and last name of student.  It will change outside the scope of the function because the students array of dictionaries was passed in as 'inout'
        students[index] = student
        allStudents.insert(name)
    }
    print(allStudents)
    return allStudents
    
}

//this function, and all of the other proceeding functions, take advantage of the new field "name" to easily create sets of students with first and last names
func getMathStudents(students: Students) -> Class {
    
    var math = Class() //create a new empty set called "math"
    
    math.insert(students[8]["name"]!) //why "name"? A: because this field was added to the students array of dictionary.
    math.insert(students[4]["name"]!)
    math.insert(students[13]["name"]!)
    math.insert(students[11]["name"]!)
    math.insert(students[7]["name"]!)
    math.insert(students[0]["name"]!)
    math.insert(students[6]["name"]!)
    
    return math
    
}



func getMathBoyStudents(students: Students) -> Class {
    
    var math = Class()
    
    math.insert(students[13]["name"]!)
    math.insert(students[0]["name"]!)
    math.insert(students[7]["name"]!)
    math.insert(students[6]["name"]!)
    math.insert(students[4]["name"]!)
    
    return math
}

func getMathGirlStudents(students: Students) -> Class {
    
    var math = Class()
    
    math.insert(students[11]["name"]!)
    math.insert(students[8]["name"]!)
    
    return math
}

func getScienceStudents(students: Students) -> Class {
    
    var science = Class()
    
    science.insert(students[7]["name"]!)
    science.insert(students[12]["name"]!)
    science.insert(students[10]["name"]!)
    science.insert(students[4]["name"]!)
    science.insert(students[14]["name"]!)
    science.insert(students[6]["name"]!)
    science.insert(students[1]["name"]!)
    
    return science
}

func getEnglishStudents(students: Students) -> Class {
    
    var english = Class()
    
    english.insert(students[3]["name"]!)
    english.insert(students[5]["name"]!)
    english.insert(students[13]["name"]!)
    english.insert(students[16]["name"]!)
    english.insert(students[6]["name"]!)
    english.insert(students[2]["name"]!)
    english.insert(students[9]["name"]!)
    
    return english
}

func getHistoryStudents(students: Students) -> Class {
    
    var history = Class()
    
    history.insert(students[7]["name"]!) //why is this an optional if it is a specific name with specific index? A: Because there might not be a student name at element 7
    history.insert(students[0]["name"]!)
    history.insert(students[15]["name"]!)
    history.insert(students[2]["name"]!)
    history.insert(students[4]["name"]!)
    history.insert(students[6]["name"]!)
    history.insert(students[5]["name"]!)
    
    return history
}

func getSemester(classes: [Class]) -> Classes {
    
    var classes = Classes()
    
    //what's the _ represent again?
    for _class in classes {
        
        classes[_class.0] = _class.1
    }
    
    return classes
}

//the function 'getEntireClass' uses inout variables therefore renames the dictionary to "name" ,which is used later
var allStudents = getEntireClass(&students)
print(students)
print(allStudents)


var math = getMathStudents(students)
var mathBoys = getMathBoyStudents(students)
var mathGirls = getMathGirlStudents(students)
var science = getScienceStudents(students)
var english = getEnglishStudents(students)
var history = getHistoryStudents(students)
var classes = getSemester([math, science, english, history]) //where are 'math', 'science', 'english' and 'history'?

print("All \(students.count) students")

//for student in students {
//    print("\(student["name"]!)") //where is "name"?
//}
//
//let classNames = classes.keys
//for name in classNames {
//    let _class = classes[name]!
//    
//    print("\(_class.count) \(name) Students")
//    
//    for student in _class {
//        print("\t\(student)")
//    }
//}



//: [Next](@next)
