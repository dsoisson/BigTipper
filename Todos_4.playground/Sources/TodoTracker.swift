import Foundation

public class ItemTracker {
    
    var todos = [Todo]() //create a var to hold array of Todos
    
    public init(){
       
    }
    
//    //method to get a single Todo from the
//    public func getTodo(id: String) -> Todo? {
//        
//        guard let index = (indexOf() { $0.id == id }) else { return nil }
//        
//        return todos[index]
//    }
    
//    //method to add a Todo
//    public func addTodo(todo: Todo) -> Todo {
//        
//        todos.append(todo)
//        
//        return todo
//    }
    
//    //method to update a Todo
//    public func updateTodo(todo: Todo) -> Todo? {
//        
//        guard let index = (indexOf() { $0.id == todo.id }) else { return nil }
//        
//        todos[index] = todo
//        return todo
//    }
//    
//    //method to delete a todo
//    public func deleteTodo(id: String) -> Todo? {
//        
//        guard let index = (indexOf() { $0.id == id }) else { return nil }
//        
//        return todos.removeAtIndex(index)
//    }
    
    //method to iterate through an array of types
    func iterator<T>(items: [T], closure: (item: T) -> Void) {
        
        for index in 0..<items.count {
            
            closure(item: items[index])
        }
    }

    //method to 
    public func each<T>(items: [T], closure: (item: T, index: Int) -> Void) {
        
        var index = 0;
        
        iterator(items) { (item) in
            
            closure(item: item, index: index)
            
            index += 1
        }
    }
    
    public func all<T>(items: [T], closure: (item: T) -> Bool) -> Bool {
        
        var all = true
        
        iterator(items) { (item) -> Void in
            
            if all && !closure(item: item) {
                
                all = false
            }
        }
        
        return all
    }
    
    public func any<T>(items: [T], closure: (item: T) -> Bool) -> Bool {
        
        var any = false
        
        iterator(items) { (item) -> Void in
            
            if !any && closure(item: item) {
                
                any = true
            }
        }
        
        return any
    }
    
    public func indexOf<T>(items: [T], closure: (item: T) -> Bool) -> Int? {
        
        var index = -1
        var found = false
        
        iterator(items) { (item) -> Void in
            
            if !found {
                
                if closure(item: item)  {
                    found = true
                }
                
                index += 1
            }
        }
        
        return index == -1 || !found ? nil : index
    }
    
    public func contains<T>(items: [T], closure: (item: T) -> Bool) -> Bool {
        
        var found = false
        
        iterator(items) { (item) -> Void in
            
            if !found && closure(item: item) {
                
                found = true
            }
        }
        
        return found
    }
    
    public func filter<T>(items: [T], closure: (item: T) -> Bool) -> [T]? {
        
        var filter = [T]()
        
        iterator(items) { (item) -> Void in
            
            if closure(item: item) {
                
                filter.append(item)
            }
        }
        
        return !filter.isEmpty ? filter : nil
    }
    
    public func reject<T>(items: [T], closure: (item: T) -> Bool) -> [T]? {
        
        var keep = [T]()
        
        iterator(items) { (item) -> Void in
            
            if !closure(item: item) {
                
                keep.append(item)
            }
        }
        
        return !keep.isEmpty ? keep : nil
    }
    
    public func pluck<T>(items: [T], closure: (item: T) -> AnyObject) -> [AnyObject] {
        
        var plucked = [AnyObject]()
        
        iterator(items) { plucked.append(closure(item: $0)) }
        
        return plucked
    }
}

    
