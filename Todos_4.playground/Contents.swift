 /*:
 * callout(Assignment): Based on Sessions 1-15 (specifically Protocols, Extensions, Generics, JSON & Instances, HTTP & ReST), create a playground that will manage your todos.
 
 **You will need to:**
 - Print all your Todos (small description)
 - Print a single Todo (large description)
 - Add a Todo
 - Update a Todo
 - Delete a Todo
 
 **Constraints:**
 - Create a container protocol to store data
 - Create a data type comforming to your container
 - Serialize and deserialize the data within your container
 - Leverage a ReSTful web service to retrieve todo
 - Create methods on your manager class to:
 - Get all your Todos
 - Get a single Todo passing an id as an argument
 - Add a Todo
 - Update a Todo
 - Delete a Todo
  
  Todo Model has the following properties:
  
  body: String
  done: Bool
  id: Int
  priority: Int
  title: String
  Host = http://todo.eastus.cloudapp.azure.com
  
  Path = /todo-ios/todos/api/v1.0
  
  Routes
  
  GET todos
  GET todo/{id}
  POST /todo/create
  PUT /todo/update/{id}
  DELETE /todo/delete/{id}
  Users / Password
  
  cemeh / password
  tgebrete / password
  tkhalaf / password
  jmink2 / password
  dsoisson1 / password
  cURL Examples:
  
  curl -u dsoisson1:password -H "Accept: application/json" -i http://todo.eastus.cloudapp.azure.com/todo-ios/todos/api/v1.0/todos

  curl -u dsoisson1:password -H "Accept: application/json" -i http://todo.eastus.cloudapp.azure.com/todo-ios/todos/api/v1.0/todo/0
 
  curl -u dsoisson1:password -H "Content-Type: application/json" -X POST -d '{"title":"Lunch", "body":"Having lunch", "priority": 3}' -v http://todo.eastus.cloudapp.azure.com/todo-ios/todos/api/v1.0/todo/create
 
  curl -u dsoisson1:password -H "Content-Type: application/json" -X PUT -d '{"title":"Dinner", "body":"Having Dinner", "priority": 2}' -i http://todo.eastus.cloudapp.azure.com/todo-ios/todos/api/v1.0/todo/update/0

  curl -u dsoisson1:password -H "Accept: application/json" -X DELETE http://todo.eastus.cloudapp.azure.com/todo-ios/todos/api/v1.0/todo/delete/2

 */

import Foundation
import XCPlayground
 
var host = "http://dsoisson1:password@todo.eastus.cloudapp.azure.com"
var session = NSURLSession.sharedSession()

 
 
 
 var todo1 = Todo()
 todo1.body = "Swift assignment"
 todo1.done = false
 todo1.priority = 1
 todo1.title = "do homework"
 
 var todo2 = Todo()
 todo2.body = "grade test"
 todo2.done = true
 todo2.priority = 2
 todo2.title = "math"
 
 var myTodos = Database<Todo>()
 
 myTodos.addItem(todo2)
 myTodos.addItem(todo1)

let todosJsonPayload =  myTodos.serialize { (items) -> AnyObject in
 return Array(items).asDictionary
 }
 
 print(todosJsonPayload)

 myTodos.deserialize("\(host)/todo-ios/todos/api/v1.0/todos"){ (items) -> AnyObject in
    return Array(arrayLiteral: items as! Todo).asDictionary
 }
    
 
 //print all todos
// var todos = NSMutableURLRequest(URL: NSURL(string: "\(host)/todo-ios/todos/api/v1.0/todos")!)
// todos.HTTPMethod = "GET"
// todos.addValue("application/json", forHTTPHeaderField: "Content-Type")
// 
// var taskTodos = session.dataTaskWithRequest(todos){ (data, response, error) -> Void in
//    if error != nil {
//        print(error)
//    } else {
//        let statusCode = (response as? NSHTTPURLResponse)?.statusCode
//        guard statusCode >= 200 && statusCode < 300, let json = data else {
//            return
//        }
//        
//        var result = NSString(data: json, encoding: NSASCIIStringEncoding)!
//        
//        print(result)
// }
// 
// }
// taskTodos.resume()
// 


 
//
////print a todo
// var todo = NSMutableURLRequest(URL: NSURL(string: "\(host)/todo-ios/todos/api/v1.0/0")!)
// todo.HTTPMethod = "GET"
// todo.addValue("application/json", forHTTPHeaderField: "Content-Type")
// 
// var taskTodo = session.dataTaskWithRequest(todo){ (data, response, error) -> Void in
//    if error != nil {
//        print(error)
//    } else {
//   let statusCode = (response as? NSHTTPURLResponse)?.statusCode
//  guard statusCode >= 200 && statusCode < 300, let json = data else {
//  return
// }
// 
//        var result = NSString(data: json, encoding: NSASCIIStringEncoding)!
//    
//        print(result)
//    
// }
// }
// taskTodo.resume()
// 
 
 
//
// //create a todo
// var createTodo = NSMutableURLRequest(URL: NSURL(string: "\(host)/todo-ios/todos/api/v1.0")!)
// createTodo.HTTPMethod = "POST"
// createTodo.addValue("application/json", forHTTPHeaderField: "Content-Type")
// let jsonPayload = todosJsonPayload
// var taskCreateTodo = session.dataTaskWithRequest(createTodo){ (data, response, error) -> Void in
//    if error != nil {
//        print(error)
//    } else {
// let statusCode = (response as? NSHTTPURLResponse)?.statusCode
// guard statusCode >= 200 && statusCode < 300, let json = data else {
//    return
// }
//
//        var result = NSString(data: json, encoding: NSASCIIStringEncoding)!
//        
//        print(result)
//        
//    }
// }
// taskCreateTodo.resume()
//
// 
//
// //update a todo
// var updateTodo = NSMutableURLRequest(URL: NSURL(string: "\(host) /todo-ios/todos/api/v1.0/0")!)
// updateTodo.HTTPMethod = "PUT"
// updateTodo.addValue("application/json", forHTTPHeaderField: "Content-Type")
// 
// var taskUpdateTodo = session.dataTaskWithRequest(updateTodo){ (data, response, error) -> Void in
//    if error != nil {
//        print(error)
//    } else {
// let statusCode = (response as? NSHTTPURLResponse)?.statusCode
// guard statusCode >= 200 && statusCode < 300, let json = data else {
//    return
// }
//
//        var result = NSString(data: json, encoding: NSASCIIStringEncoding)!
//        
//        print(result)
//        
//    }
// }
// taskUpdateTodo.resume()
//
// //delete a todo
// var deleteTodo = NSMutableURLRequest(URL: NSURL(string: "\(host) /todo-ios/todos/api/v1.0/0")!)
// deleteTodo.HTTPMethod = "PUT"
// deleteTodo.addValue("application/json", forHTTPHeaderField: "Content-Type")
// 
// var taskDeleteTodo = session.dataTaskWithRequest(deleteTodo){ (data, response, error) -> Void in
//    if error != nil {
//        print(error)
//    } else {
// let statusCode = (response as? NSHTTPURLResponse)?.statusCode
// guard statusCode >= 200 && statusCode < 300, let json = data else {
//    return
// }
//
//        var result = NSString(data: json, encoding: NSASCIIStringEncoding)!
//        
//        print(result)
//        
//    }
// }
// taskDeleteTodo.resume()
//
// 

 
 
// 
//
//
// XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
//
//

