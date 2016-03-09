import Foundation

public typealias todosType = [(id: Int, title: String, date: String, desc: String, assigned: (first: String, last: String))]
public typealias todosTuple = (id: Int, title: String, date: String, desc: String, assigned: (first: String, last: String))

public func allTodos (listOfTodos:todosType) -> [String] {
    
    var allTodoTitles = [String]()
    
    for (_, element) in listOfTodos.enumerate() {
        allTodoTitles.append(element.title)
    }
    return allTodoTitles
}

public func getSingleTodo (listOfTodos:todosType, idPassed: Int) -> String {
    
    var singleTodo: String = ""
    
    for (index, element) in listOfTodos.enumerate() {
        if index == idPassed {
            singleTodo = element.title
        }
    }
    return singleTodo
}

public func addTodo (inout listOfTodos:todosType, _ newTodo: todosTuple) {
    
    listOfTodos.append(newTodo)    
    
}

public func updateTodo (inout listOfTodos:todosType, _ myIndex: Int, _ myLabel: String) {
    
    listOfTodos[myIndex].title = myLabel
    
}

public func deleteTodo (inout listOfTodos:todosType, _ removeTodo: Int ) {
    
    listOfTodos.removeAtIndex(removeTodo)
    
}

