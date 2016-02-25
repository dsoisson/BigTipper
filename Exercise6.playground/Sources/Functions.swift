import Foundation

public func iterator(students: [[String:String]], closure: (student: [String:String]) -> Void) {
    
    for var index = 0; index < students.count; ++index {
        
        closure(student: students[index])
    }
}

public func each(students: [[String:String]], closure: (student: [String:String], index: Int) -> Void) {
    
    var index = 0;
    
    iterator(students) { closure(student: $0, index: index++) }
}

public func pluck(students: [[String:String]], closure: (student: [String:String]) -> String) -> [String] {
    
    var plucked = [String]()
    
    iterator(students) { (student) -> Void in
        
        let value = closure(student: student)
        
        plucked.append(value)
        
    }
    
    return plucked
}
