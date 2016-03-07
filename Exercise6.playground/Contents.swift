/*:
**Exercise:** Leveraging the `each` and `iterator` functions above, and using the students constant below, create the following functions passing in a closure to satisfy the function requirement.
*/
let students = [
    ["first" : "Obi-Wan",   "last" : "Kenobi",      "age" : "55", "class" : "Math"],
    ["first" : "Darth",     "last" : "Vader",		"age" : "76", "class" : "Engligh"],
    ["first" : "Anakin",    "last" : "Skywalker",	"age" : "17", "class" : "History"],
    ["first" : "Darth",     "last" : "Sidious",		"age" : "88", "class" : "Science"],
    ["first" : "Padme",     "last" : "Amidala",		"age" : "25", "class" : "Math"],
    ["first" : "Mace",      "last" : "Windu",		"age" : "56", "class" : "Science"],
    ["first" : "Count",     "last" : "Dooku",		"age" : "67", "class" : "History"],
    ["first" : "Luke",      "last" : "Skywalker",	"age" : "21", "class" : "Math"],
    ["first" : "Han",       "last" : "Solo",		"age" : "35", "class" : "Science"],
    ["first" : "Leia",      "last" : "Organa",		"age" : "21", "class" : "Engligh"],
    ["first" : "Chew",      "last" : "Bacca",		"age" : "33", "class" : "Science"],
    ["first" : "Boba",      "last" : "Fett",		"age" : "32", "class" : "History"],
    ["first" : "Lando",     "last" : "Calrissian",	"age" : "55", "class" : "Engligh"],
    ["first" : "Kylo",      "last" : "Ren",			"age" : "21", "class" : "Math"],
    ["first" : "Poe",       "last" : "Dameron",		"age" : "25", "class" : "History"],
    ["first" : "Finn",      "last" : "FN-2187",		"age" : "23", "class" : "Science"],
    ["first" : "Rey",       "last" : "Rey",			"age" : "16", "class" : "Engligh"]
]
/*:
**Functions:**
* each = Iterate over each element in the array
* all = Returns true if all of the elements is not false
* any = Returns true if at least one of the elements is not false
* contains = Returns true if the element is present
* indexOf = Returns the index at which element can be found
* filter = Returns an array of all the elements that pass a truth test
* reject = Returns the elements in the array without the elements that pass a truth test
* pluck = Returns an array of a specific value from all the elements
>> **Constraints:**
Use the above functions to query your students.
>>
>> **Example Output:**
* Last names of math and sciense students where age > 25 and age < 80
* ["Kenobi", "Windu", "Solo", "Bacca"]
*/

func eachClosureBlah(student: [String:String], index: Int) -> Void {

    let first = student["first"]!
    let last = student["last"]!
    
    print("\(first) \(last) is index \(index)")
}

each(students, eachClosure: eachClosureBlah)

//each(students) { (student, index) -> Void in
//
//    let first = student["first"]!
//    let last = student["last"]!
//    
//    print("\(first) \(last) is index \(index)")
//}


//print all the students first and last name and their index.
//call the function 'each' and send two arguments:
//(1) argument array of dictionaries type called 'students'.
//(2) argument Closure. 

//Are 'student' and 'index' empty variables at this time?  Do they have any values at first?
//Why does it return 'Void'?
//In the creation of the string constants 'let first = student["first"], where is 'student' coming from? 
    //Is this a variable created on the fly? 
//If the function 'each' returns Void, how is it able to print the names and index of each dictionary?
//How does the 'index' value increase?

//when calling the function each(<#T##students: [[String : String]]##[[String : String]]#>, closure: <#T##(student: [String : String], index: Int) -> Void#>)

// Why can we drop the parameter names when calling the function (e.g., 'students' and 'closure'?)
    //We can drop 'students' because it is the first parameter and Swift considers it extraneous
    //'closure' is dropped because it is the last argument and becomes a trailing closure.

each(students) { print("\($0["first"]!) \($0["last"]!) is index \($1)") }
//$0 represents the first parameter of the closure, 'student' in this case.
//$0["first"]! fetches from the first parameter of the closure 'student', the value for the key "first", and if present, unwraps it.
//$0["last"]! fetches from the first parameter of the closure 'student', the value for the key "last", and if present, unwraps it.
//$1 represents the 2nd parameter value of the closure 'index'.
//Why doesn't this print the text "Rey Rey is index 16"? 
    //Is it because the function 'each' returns Void?
//How do we get it to print "Rey Rey is index 16" then?

//this is an example of using a trailing closure since the last argument in function 'each' is a closure. The closure doesn't have to be inside the ().
//Why is the output () and not the actual string "Rey Rey is index 16"?
    //Is it because the function returns 'Void'?


print(pluck(students) { (student) -> String in
    return student["age"]!
})

print(pluck(students) { (student) -> String in
    return student["last"]!
})

//pluck(<#T##students: [[String : String]]##[[String : String]]#>, closure: <#T##(student: [String : String]) -> String#>)
//When I call the function 'pluck' it requires 2 parameters: An array of dictionaries [[String:String]]
//How do I know I do not need to add the parameter name 'students'? 
    //Error that it is extraneous.  Swift just knows this is the first parameter and doesn't need the name?
//why do I not need the parameter name 'closure' for the second argument?
//why do I not need the comma between the first and second parameter?  
    //Converts to a trailing closure
//the (student) in the passed Closure is what? 
    //Is it just referring to the parameter name in the required function type

let test = all(students){$0["first"] != "Duane"}
if test {
    print("nobody has a cool name like Duane")
} else {
    print("I'm glad to see there is a star wars character named Duane")
}

all(students){$0["first"] == "Obi-Wan"}
//returns false because all students first names are not "Obi-Wan"

print("all = \(all(students) { Int($0["age"]!) < 89 })")
//returns true because all students ages are less than 89.  
//why doesn't it actually print "all = true"?

print("any = \(any(students) { Int($0["age"]!) <= 16 })")
//returns true because at least 1 students age is less than or equal to 16
//why doesn't it print "any = true"?

let test2 = any(students){$0["last"]=="Soisson"}
//returns false because no student has the last name of Soisson

if test2 {
    print("I'm glad to see a Soisson in the movies!")
} else {
    print("It's unfortunate the Soisson name didn't make it to Star Wars.")
}



print("indexOf = \(students[indexOf(students) { $0["last"] == "Sidious" }!]["first"]!)")
//If indexOf is supposed to return the index number, why is it a bool?
//Why is it not printing "indexOf = Darth"? see below:
//The index of the student with last name Sidious is 3

var info = "class"
print("index of = \(students[3][info]!)")

print("contains = \(contains(students) { $0["first"] == "Chew" })")
//the function iterates 12 times before becomes true with the first name of Chew
//why not printing "contains = true"?


print("filter: \n\t\(filter(students) { $0["class"]! == "Engligh" }!)")
let overHill = filter(students){Int($0["age"]!)==88}!
print(overHill)

print("reject: \n\t\(reject(students) { Int($0["age"]!) >= 21 }!)")

if let drinkingAge = (reject(students){Int($0["age"]!)>=21}){
    each(drinkingAge){(student, index) -> Void in
        let first = student["first"]!
        print("\(first) cannot drink a beer.")
    }
}


print("pluck: \n\t\(pluck(students) { $0["age"]! }.sort())")

print("pluck: \n\t\(pluck(students) { $0["last"]! })")

print("Last names of math and science students where age > 25 and age < 80\n\t\(pluck(filter(filter(students) { $0["class"] == "Math" }! + filter(students) { $0["class"] == "Science" }!) { Int($0["age"]!)! > 25 && Int($0["age"]!)! < 80 }!) { $0["last"]! })")


