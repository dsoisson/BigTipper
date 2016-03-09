/*:
**Assignment:** Based on Sessions 1-7 (specifically Collection Types, Functions, Closures, Enumerations), create a playground that will manage your todos.
>> **You will need to:**
* Print all your Todos (small description)
* Print a single Todo (large description)
* Add a Todo
* Update a Todo
* Delete a Todo
>> **Constraints:**
* Model a Todo
* Create functions to:
* Get all your Todos
* Get a single Todo passing an id as an argument
* Add a Todo
* Update a Todo
* Delete a Todo
*/


import Foundation

var todos = [
    (id: 1, title: "First Todo", date: "02-14-16", desc: "My first todo item", assigned: (first: "Mathew", last: "Sheets")),
    (id: 2, title: "Second Todo", date: "02-15-16", desc: "My second todo item", assigned: (first: "Jack", last: "Sheets")),
    (id: 3, title: "Third Todo", date: "02-16-16", desc: "My third todo item", assigned: (first: "Sam", last: "Sheets"))
]

var todo1 = (id: 4, title: "Fourth Todo", date: "02-17-16", desc: "My fourth todo item", assigned: (first: "Duane", last: "Soisson"))


print(allTodos(todos))

print(getSingleTodo(todos, idPassed: 2))

addTodo(&todos, todo1)

print(todos)

deleteTodo(&todos, 0)

print(todos)

updateTodo(&todos, 0, "1st Todo")

print(todos)
