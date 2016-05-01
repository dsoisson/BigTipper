import Foundation

public class Todos {
    public var todoId: Int = 0
    public var todoTitle: String
    public var todoDate: String
    public var todoDesc: String
    public var todoAssigned: Person
    
    public init(title: String, date: String, desc: String, assigned: Person) {
        self.todoId += 1
        self.todoTitle = title
        self.todoDate = date
        self.todoDesc = desc
        self.todoAssigned = assigned
    }
    
    
    public func fullDescription() -> String {
        return "title: \(todoTitle), date: \(todoDate), desc: \(todoDesc), assigned: \(todoAssigned.firstName) \(todoAssigned.lastName)"
    }
    
    deinit {
        print("todo is gone")
    }
}
