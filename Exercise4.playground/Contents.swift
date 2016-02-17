
/*:
**Exercise:** You have to record all the students and their grades for your school. Leveraging arrays, dictionaries, and sets create table like containers for each class. Your classes are Math, Science, English and History with a total of 17 unique students. Print out each class roster and use and experiment with set operations and set membership and equality.
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

var classes: Set<String> = ["Math", "Science", "English", "History"]
//roster of all students is a list of 
var students: Set<String> = ["Mathew Sheets", "John Winters", "Sam Smith", "Carson Daily", "Adam Aarons", "Bill Clinton", "George Bush", "Ronald Reagan", "Barack Obama", "Jimmy Carter", "Richard Nixon", "John F Kennedy", "William McKinley", "Abraham Lincoln", "John Adams", "George Washington", "Benjamin Franklin"]

var mathClass: Set<String> = []
var scienceClass: Set<String> = []
var englishClass: Set<String> = []
var historyClass: Set<String> = []
let classSize = 5
var spaceAvailable = true

//each class has room for 5 students; 3 students get to take 2 classes
//create loop to assign student1 to math, student2 to science, student3 to english, student4 to history, student5 to math, until all classes have 5 students and no class has duplicate students

repeat {while spaceAvailable{
for i in students {
    switch i {
    case _ where mathClass.count < classSize:
        mathClass.insert(i)
    case _ where scienceClass.count < classSize:
        scienceClass.insert(i)
    case _ where englishClass.count < classSize:
        englishClass.insert(i)
    case _ where historyClass.count < classSize:
        historyClass.insert(i)
    default: break
    }
}
    spaceAvailable = !spaceAvailable
    
} 

print(mathClass)
print(scienceClass)
print(englishClass)
print(historyClass)

//create loop to print rosters of each class





