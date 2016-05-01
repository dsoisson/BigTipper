/*:
 * callout(Assignment): Based on Sessions classes, etc, create a playground that will manage your todos.
 
 **You will need to:**
 - Print all your Todos (small description)
 - Print a single Todo (large description)
 - Add a Todo
 - Update a Todo
 - Delete a Todo
 
 */
import Foundation

var myTracker = TodoTracker(tracker: [])

var person1 = Person(first: "Duane", last: "Soisson")
var person2 = Person(first: "Maria", last: "Soisson")
var person3 = Person(first: "Sophia", last: "Soisson")

var todo1 = Todos(title: "First Todo", date: "02-14-16", desc: "My first todo item", assigned: person1)
var todo2 = Todos(title: "Second Todo", date: "02-15-16", desc: "My second todo item", assigned: person2)
var todo3 = Todos(title: "Third Todo", date: "02-16-16", desc: "My third todo item", assigned: person3)

//add a todo
myTracker.addTodo(todo1)
myTracker.addTodo(todo2)
myTracker.addTodo(todo3)

//print all todos
print(myTracker.iterator())

//print a single todo
print(myTracker.singleTodo(1))

//delete a todo
myTracker.deleteTodo(2)

print(myTracker.iterator())








