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
 
  curl -u dsoisson1:password -H "Content-Type: application/json" -X POST -d '{"title":"Grade", "body":"Math quiz", "priority": 1}' -v http://todo.eastus.cloudapp.azure.com/todo-ios/todos/api/v1.0/todo/create
 
  curl -u dsoisson1:password -H "Content-Type: application/json" -X PUT -d '{"title":"Dinner", "body":"Having Dinner", "priority": 2}' -i http://todo.eastus.cloudapp.azure.com/todo-ios/todos/api/v1.0/todo/update/0

  curl -u dsoisson1:password -H "Accept: application/json" -X DELETE http://todo.eastus.cloudapp.azure.com/todo-ios/todos/api/v1.0/todo/delete/2

 */

import Foundation
import XCPlayground
 
var host = "http://todo.eastus.cloudapp.azure.com"
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
myTodos.count
 
myTodos[0].body
 
//let todosJsonPayload =  myTodos.serialize { (items) -> AnyObject in
// return Array(items).asDictionary
// }

// public func serialize(convert: (items: Set<Element>) -> AnyObject) -> String? {
//    do {
//        let anyObject = convert(items: items)
//        
//        let jsonData = try NSJSONSerialization.dataWithJSONObject(anyObject, options: .PrettyPrinted)
//        
//        return String(data: jsonData, encoding: NSUTF8StringEncoding)
//        
//    } catch let error as NSError {
//        print(error.localizedDescription)
//    }
//    
//    return nil
// }
// }
 
 let jsonData = try NSJSONSerialization.dataWithJSONObject(todo2.asDictionary, options: .PrettyPrinted)
 let jsonString = String(data: jsonData, encoding: NSUTF8StringEncoding)
 
 print(jsonString)
 
 let todosJsonPayload = jsonString

// myTodos.deserialize("\(host)/todo-ios/todos/api/v1.0/todos"){ (items) -> AnyObject in
//    return Array(arrayLiteral: items as! Todo).asDictionary
// }

 let test = try FileUtils.getFileContents("\(host)/todo-ios/todos/api/v1.0/todos")

 
 
// public func deserialize<T>(filename: String, closure: (item: AnyObject) -> T) {
//    
//    var contents: String?
//    do {
//        contents = try FileUtils.getFileContents(filename)
//    } catch FileError.ReadError(let error) {
//        print(error)
//    } catch FileError.NotFound(let path) {
//        print(path)
//    } catch let error as NSError {
//        print(error)
//    }
//    
//    if let payload = contents {
//        let jsonData = payload.dataUsingEncoding(NSUTF8StringEncoding)!
//        do {
//            if let jsonObject: AnyObject = try NSJSONSerialization.JSONObjectWithData(jsonData, options: .MutableContainers) {
//                
//                if let arrayOfDictionaries = jsonObject as? [[String:AnyObject]] {
//                    for dictionary in arrayOfDictionaries {
//                        
//                        let item = closure(item: dictionary) as! ItemType
//                        
//                        addItem(item)
//                    }
//                } else if let array = jsonObject as? [AnyObject] {
//                    for thing in array {
//                        
//                        let item = closure(item: thing) as! ItemType
//                        
//                        addItem(item)
//                    }
//                } else {
//                    print("not an array")
//                }
//            } else {
//                print("could not deserialize")
//            }
//        } catch let error as NSError {
//            print(error.localizedDescription)
//        }
//    }
// }
//
 

 
 
 
 
 
let username = "dsoisson1"
let password = "password"
let loginString = NSString(format: "%@:%@", username, password)
let loginData: NSData = loginString.dataUsingEncoding(NSUTF8StringEncoding)!
let base64LoginString = loginData.base64EncodedStringWithOptions([])
 
//print all todos
// var request = NSMutableURLRequest(URL: NSURL(string: "\(host)/todo-ios/todos/api/v1.0/todos")!)
// request.HTTPMethod = "GET"
// request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
// request.addValue("application/json", forHTTPHeaderField: "Content-Type")
// 
// var task = session.dataTaskWithRequest(request){ (data, response, error) -> Void in
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
// task.resume()

////print a todo
// var request = NSMutableURLRequest(URL: NSURL(string: "\(host)/todo-ios/todos/api/v1.0/todo/3")!)
// request.HTTPMethod = "GET"
//  request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
// request.addValue("application/json", forHTTPHeaderField: "Content-Type")
// 
// var task = session.dataTaskWithRequest(request){ (data, response, error) -> Void in
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
// task.resume()
// 
 
 
//create a todo
//var request = NSMutableURLRequest(URL: NSURL(string: "\(host)/todo-ios/todos/api/v1.0/todo/create")!)
//request.HTTPMethod = "POST"
//request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
//request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
// let jsonPayload = todosJsonPayload
//     print(jsonPayload)
// request.HTTPBody = jsonPayload!.dataUsingEncoding(NSUTF8StringEncoding)
//
// var task = session.dataTaskWithRequest(request){ (data, response, error) -> Void in
//    if error != nil {
//        print(error!)
//    } else {
//        
// let statusCode = (response as? NSHTTPURLResponse)?.statusCode
// guard statusCode >= 200 && statusCode < 300, let json = data else {
//    
//    return
// }
//
//        var result = NSString(data: json, encoding: NSASCIIStringEncoding)!
//        
//        print(result)
//        
//    }
// }
// task.resume()
// 

//update a todo
// var request = NSMutableURLRequest(URL: NSURL(string: "\(host)/todo-ios/todos/api/v1.0/todo/update/0")!)
// request.HTTPMethod = "PUT"
// request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
// request.addValue("application/json", forHTTPHeaderField: "Content-Type")
// 
// let jsonPayload = todosJsonPayload
// request.HTTPBody = jsonPayload!.dataUsingEncoding(NSUTF8StringEncoding)
//
// var task = session.dataTaskWithRequest(request){ (data, response, error) -> Void in
//    if error != nil {
//        print(error!)
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
// task.resume()
//

//delete a todo
// var request = NSMutableURLRequest(URL: NSURL(string: "\(host)/todo-ios/todos/api/v1.0/todo/delete/1")!)
// request.HTTPMethod = "DELETE"
// request.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
// request.addValue("application/json", forHTTPHeaderField: "Content-Type")
// 
// var task = session.dataTaskWithRequest(request){ (data, response, error) -> Void in
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
// task.resume()
// 
 

 XCPlaygroundPage.currentPage.needsIndefiniteExecution = true



