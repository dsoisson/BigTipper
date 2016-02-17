import Foundation

var todos = (
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

let todosMirror = Mirror(reflecting: todos)

for case let (label?, record) in todosMirror.children {
    
    print(label)
    
    let recordMirror = Mirror(reflecting: record)
    for case let (label?, tuple) in recordMirror.children {
        
        let tupleMirror = Mirror(reflecting: tuple)
        if tupleMirror.children.count > 0 {
            
            for case let (label?, value) in tupleMirror.children {
                
                print("\(value)")
            }
        } else {
            print("\t\(tuple)")
        }
    }
}

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
todos.0.assigned.first = "Maria"
print("Now \(todos.0.assigned.first) has to \(todos.0.title)")

/*: 
Delete a todo
*/
todos





