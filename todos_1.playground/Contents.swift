

import UIKit
import Foundation

let todos = (
    (id: 1, title: "mow grass", date: "06-15-16", desc: "the front yard is too long and needs mowed.", assigned: (first: "Duane", last: "Soisson")),
    (id: 2, title: "change oil", date: "06-16-16", desc: "3 months has passed since last oil change in Mazda.", assigned: (first: "Duane", last: "Soisson")),
    (id: 3, title: "vacuum floors", date: "02-21-16", desc: "the upstairs carpet needs weekly vacuuming.", assigned: (first: "Sophia", last: "Soisson")),
    (id: 4, title: "clean bathrooms", date: "02-21-16", desc: "all bathrooms need mirrors and floored wiped down.", assigned: (first: "Eleni", last: "Soisson")),
    (id: 5, title: "empty dishwashwer", date: "02-21-16", desc: "the dishwasher is full of clean dishes.", assigned: (first: "Katerini", last: "Soisson"))
)

/*:
Print all of your todos (small description)
*/
// need nested for loops for each nested tuple

print("Print all your todos (small description)")
//iterate over the tuple to print out all of the small descriptions.  Iteration must be done through use of Reflect

var todosMirror = Mirror(reflecting: todos)
for case let (label?, todo) in todosMirror.children {
    let todoMirror = Mirror(reflecting: todo)
    for case let (label?, value) in todoMirror.children {
        if label == ".1" {//this is the title
            print("\t\(value)")
        }
    }
}

print("")
/*: 
Print a single todo
*/
print("The assignment for \(todos.0.assigned.first) \(todos.0.assigned.last) on \(todos.0.date) is to \(todos.0.title) because \(todos.0.desc)")
/*: 
Add a todo
*/


/*:
Update a todo
*/

/*: 
Delete a todo
*/
todos





