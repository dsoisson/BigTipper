import Foundation

public func iterator(students: [[String:String]], iteratorClosure: (student: [String:String]) -> Void)  {
    
    for var index = 0;
        index < students.count;
        ++index {
        
        let student = students[index]
            
        iteratorClosure(student: student)
            
    }
}
//create a function called iterator with 2 parameters and no return value.
//1st is named  "students" and has an Array of Dictionary type. Is this why it has the [[ ]]?
//2nd parameter is named "closure" and has a Closure type. The Closure type accepts a Dictionary and returns nothing. Why doesn't it also have double brackets [[ ]]? It isn't an Array of Dictionaries, just a Dictionary?
//Do the statements for var index = 0; index < students.count; and ++index belong to 'iterator' or 'closure'?
//the statements create a new variable integer called 'index'. if the index is less than the count of the array of dictionaries then add 1 to the index and repeat. Does students.count count the number of dictionaries in the array or does it count the number of entries in each dictionary? I think it is a count of each dictionary.
//What is the purpose of the statement at the end "closure(student: students[index])"?


public func each(students: [[String:String]], eachClosure: (student: [String:String], index: Int) -> Void) {
    
    var index = 0;
    
    func iteratorClosure(student: [String:String]) -> Void {
        
        eachClosure(student: student, index: index++)
    }
    
    iterator(students, iteratorClosure: iteratorClosure)
    
//    iterator(students) { (student) -> Void in
//        
//        eachClosure(student: student, index: index++)
//    }

//    iterator(students) { closure(student: $0, index: index++) }

}
//create a function called 'each' with 2 parameters and no return value
//The first parameter is called 'students' and has an Array of Dictionaries type.  The name 'students' is independent of the array also called 'students'.
//The second parameter is called 'closure' and is a Closure Type. The Closure Type accepts 2 parameters of Dictionary and Int and returns nothing (void)
//The statements create a variable Int called index, calls the function "iterator" using the 2 parameters in 'each' as the arguments.  'students'(array of dictionaries) and the trailing Closure called 'closure'. 

//The parameter 'student' uses the first String denoted as $0? Is there an actual value associated with this?

//The parameter 'index' uses index++.  How is this working?  How can index be increased in value at this time? Is there an actual value associated with this?


public func pluck(students: [[String:String]], closure: (student: [String:String]) -> String) -> [String] {
    
    var plucked = [String]()
    
    iterator(students) { (student) -> Void in
        
        let value = closure(student: student)
        
        plucked.append(value)
        
    }
    
    return plucked
}
//the 'pluck' function is meant to take a single string out of the array of dictionaries, add it to another array of strings and return the array.
//It has 2 parameters and returns an array of strings. 
//The first parameter is named 'students' and is an Array of Dictionaries type. The 'students' is independent of the array also called students.
//The second parameter is named 'closure' and is Closure type. The Closure accepts one parameter named "student" and of type Dictionary and returns a String
//Statements: var plucked = [String]() is initializing an empty array of strings



// Returns true if all of the elements is not false
public func all(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Bool {
    
    var all = true
    
    iterator(students) { (student) -> Void in
        
        if all && !closure(student: student) {
            
            all = false
        }
    }
    
    return all
}
//function all has 2 parameters ('students' and 'closure') of type Array of Dictionaries and of type Closure and returns a Bool.
//The type Closure has 1 parameter ('student') and returns a Bool
//The statements initialize a bool variable 'all' to true.

//then calls function 'iterator' with the Array of Dictionaries 'students' as the argument. For each student in students, check 'if all && !closure(student: student)'  --> how does this work?



// Returns the index at which element can be found
public func indexOf(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Int? {
    
    var index = -1
    var found = false
    
    iterator(students) { (student) -> Void in
        
        if !found {
            
            if closure(student: student)  {
                found = true
            }
            
            index++
        }
    }
    
    return index == -1 || !found ? nil : index
}

//function 'indexOf' has 2 parameters ('students', 'closure') of type Array of Dictionaries and of type Function and returns an optional integer.
//the function type has 1 parameter ('student') and returns a Bool.
//statements initializes a variable integer called 'index'
//and another variable bool called 'found'
//calls the function 'iterator' with argument 'students' and 


// Returns true if the element is present
public func contains(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Bool {
    
    var found = false
    
    iterator(students) { (student) -> Void in
        
        if !found && closure(student: student) {
            
            found = true
        }
    }
    
    return found
}
//function contains accepts 2 parameters and returns a bool named 'found'
//parameter #1 is named 'students' and is of type Array of Dictionaries.  The Dictionary is of type "String:String"
//parameter #2 is name 'closure' and is of type Function that accepts one parameter and returns a Bool.
//statements: initialize a variable boolean named 'found' to false
//statements: call function 'iterator' to iterate through the Array of Dictionaries
//the arguments passed to the function iterator the array of dictionaries 'students' and a closure.
//What is "(student)"? Is it just understood by Swift as one dictionary in the array of dictionaries? similar to 'for name in names' for example?
//Why is return "Void"?
//'in' is standard syntax for closures
//if not false and true make var found = true.  ??Having trouble following the logic here??



// Returns an array of all the elements that pass a truth test
public func filter(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> [[String:String]]? {
    
    var filter = [[String:String]]()
    
    iterator(students) { (student) -> Void in
        
        if closure(student: student) {
            
            filter.append(student)
        }
    }
    
    return !filter.isEmpty ? filter : nil
}
//function filter has 2 parameters of type Array of Dictionaries and of type Closure and returns an array of dictionaries. 
//the Closure type has 1 parameter of Dictionary and returns a Bool
//


// Returns the elements in the array without the elements that pass a truth test
public func reject(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> [[String:String]]? {
    
    var keep = [[String:String]]()
    
    iterator(students) { (student) -> Void in
        
        if !closure(student: student) {
            
            keep.append(student)
        }
    }
    
    return !keep.isEmpty ? keep : nil
}

// Returns true if at least one of the elements is not false
public func any(students: [[String:String]], closure: (student: [String:String]) -> Bool) -> Bool {
    
    var any = false
    
    iterator(students) { (student) -> Void in
        
        if !any && closure(student: student) {
            
            any = true
        }
    }
    
    return any
}



