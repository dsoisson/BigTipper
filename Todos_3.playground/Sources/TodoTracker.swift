import Foundation

public class TodoTracker {
    public var tracker: [Todos?] = []
    
    public init(tracker: [Todos?]){
        _ = self.tracker
    }
    
    public func iterator() -> String {
        var allTodos = ""
        for index in 0..<tracker.count {
            allTodos += "\(tracker[index]!.todoDesc), "
        }
        return allTodos
    }
    
    public func singleTodo(index: Int) -> String{
        guard index <= tracker.count-1 else {
            return "Try again. Not a valid index."
        }
        return ("\(tracker[index]!.fullDescription())")
    }
    
    public func addTodo(todo: Todos) -> Void {
        tracker.append(todo)
    }
    
    public func deleteTodo(index: Int) -> String {
        guard index <= tracker.count-1 else {
            return "not a valid index"}
        
        tracker.removeAtIndex(index)
        return ("Your todo list is now down to \(tracker.count).")
    }
    
    deinit{
        print("no more tracker")
    }
}
