import Foundation

let todos = (
    (id: 1, title: "mow grass", date: "06-15-16", desc: "the front yard is too long and needs mowed.", assigned: (first: "Duane", last: "Soisson")),
    (id: 2, title: "change oil", date: "06-16-16", desc: "3 months has passed since last oil change in Mazda.", assigned: (first: "Duane", last: "Soisson")),
    (id: 3, title: "vacuum floors", date: "02-21-16", desc: "the upstairs carpet needs weekly vacuuming.", assigned: (first: "Sophia", last: "Soisson"))
)
var todo1 = (0, "", "", "", ("", ""))
var todo2 = (0, "", "", "", ("", ""))
var todo3 = (0, "", "", "", ("", ""))
/*:
Print all of your todos (small description)
*/
// need nested for loops for each nested tuple

print("Print all your todos (small description)")
//unpack nested tuples to get individual tuples. iterate over the tuple to print out all of the small descriptions.  Iteration must be done through use of Reflect

var todosMirror = Mirror(reflecting: todos) //this is creating a 'mirror' that 'reflects' the tuple todo
for case let (label?, todo) in todosMirror.children { //for-looping through all of the 'children' (each nested tuple) of the mirrored todos tuple and, if present (optional?), bind values (case let) to 'label (the tuple index number of each nested tuple)' and 'todo (the elements in each nested tuple)'.  
    print(label, todo)
    
    let todoMirror = Mirror(reflecting: todo) //now focus on the individual tuples to unpack elements of each individual tuple
    for case let (label?, value) in todoMirror.children { //loop through all elements of every 'todo' as long as there is an element (index)(optional?) and bind values to label (the tuple index) and value (id, title, etc) (case let)
        print(label, value)
        if label == ".1" {//.0 is index of id for each tuple, .1 is index of title, etc
            print("\t\(value)")
        }
    }
}

print("")
/*: 
Print a single todo
*/
print("The assignment for \(todos.0.assigned.first) \(todos.0.assigned.last) on \(todos.0.date) is to \(todos.0.title) because \(todos.0.desc)")

print("")
print("Print a single todo (large description)")
todosMirror = Mirror(reflecting: todos) //need to mirror the nested tuple in order to iterate through it to unpack it into individual tuples
for case let (label?, todo) in todosMirror.children {
    if label == ".1" { //this picks which todo to print
        let todoMirror = Mirror(reflecting: todo) //then mirror the selected tuple to unpack individual items in tuple
        var output = "" //set up empty string to hold printout of single todo in sentence format
        for case let (label?, value) in todoMirror.children { //loop through the chosen tuple to bind values of elements to their label. id is .0, title is .1, etc
            switch label { //introduce switch case here to only use a few of the elements in the tuple to add to the printout
            case ".1":
                output += "The assignment is to \(value) "
            case ".2":
                output += "no later than \(value) "
            case ".3":
                output += "because \(value)"
            default:
                break
            }
        }
        print("\(output)")
    }
}

/*: 
Add a todo
*/
print("")
print("Add a todo")
var todo4 = (id: 4, title: "Empty Trash", date: "02-17-16", desc: "The trash cans are overflowing.", assigned: (first: "Eleni", last: "Soisson")) //first establish the new todo in the proper tuple format
todosMirror = Mirror(reflecting: todos) //create a mirror of the original nested tuple.
for case let (label?, todo) in todosMirror.children { //loop through and unpack nested tuple and value bind them to their index (label is index, value is tuple)
    var tuple = todo as! (Int, String, String, String, (String, String)) //create a new variable "tuple"  type cast to the format of the original tuple
    switch label {
    case ".0":
        todo1 = tuple //filling the empty 'todo1' with the elements of the first nested tuple from original tuple
    case ".1":
        todo2 = tuple //filling the empty 'todo2' with the elements of the second nested tuple from original tuple
    case ".2":
        todo3 = tuple //filling the empty 'todo3' with the elements of the third nested tuple from the original tuple
    default:
        break
    }
}
let todoPlus1 = (todo1, todo2, todo3, todo4) //creating a new nested tuple that looks like the original nested tuple except with a fourth tuple added
todosMirror = Mirror(reflecting: todoPlus1)
for case let (label?, todo) in todosMirror.children {
    let todoMirror = Mirror(reflecting: todo)
    for case let (label?, value) in todoMirror.children {
        if label == ".1" { // this is the title of each todo, now including the fourth
            print("\t\(value)")
        }
    }
}


/*:
Update a todo
*/
print("")
print("Update a todo")
todosMirror = Mirror(reflecting: todos)
for case let (label?, todo) in todosMirror.children {
    if label == ".0" {
        var tuple = todo as! (Int, String, String, String, (String, String))
        tuple.1 = "mow neighbors grass"
        print("\t\(tuple)")
    }
}

/*: 
Delete a todo
*/
print("")
print("Delete a todo")
todosMirror = Mirror(reflecting: todoPlus1) //nearly same process of adding a tuple.  Unpack the original nested tuple and regroup under newly named nested tuple without the last tuple
for case let (label?, todo) in todosMirror.children {
    
    var tuple = todo as! (Int, String, String, String, (String, String)) //type cast var tuple to avoid error cannot assign value of type 'any' to type (Int, String, String, String, (Strin, String))
    switch label {
    case ".0":
        todo1 = tuple
    case ".2":
        todo2 = tuple
    case ".3":
        todo3 = tuple
    default:
        break
    }
}
let todoMinus1 = (todo1, todo2, todo3)
todosMirror = Mirror(reflecting: todoMinus1)
for case let (label?, todo) in todosMirror.children {
    let todoMirror = Mirror(reflecting: todo)
    for case let (label?, value) in todoMirror.children {
        if label == ".1" { // this is the title
            print("\t\(value)")
        }
    }
}






