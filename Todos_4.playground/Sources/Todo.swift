import Foundation

//public enum TodoStatus: String {
//    case NotStarted = "Not Started"
//    case InProgress = "In Progress"
//    case Stopped
//    case Completed
//}
//
//public struct Coordinate {
//    
//    public var latitude: Double
//    public var longitude: Double
//    
//    public init(latitude: Double, longitude: Double) {
//        
//        self.latitude = latitude
//        self.longitude = longitude
//    }
//}
//
//public class Person {
//    
//    public var id: String?
//    public var first: String?
//    public var last: String?
//    
//    public init() {
//        
//    }
//}
//
public class Todo {
    
    public var body: String?
    public var done: Bool?
    public var id: Int?
    public var priority: Int?
    public var title: String?
    
//    public var description: String {
//        
//        return "\tid: \(id ?? "")\n\ttitle: \(title ?? "")"
//        
//}
    var asDictionary: [String:AnyObject] {
        
        var dictionary = [String:AnyObject]()
        
        dictionary["body"] = body
        dictionary["done"] = done
        dictionary["id"] = id
        dictionary["priority"] = priority
        dictionary["title"] = title

        return dictionary
    }

    
    public init() {
        
    }
}

public func ==(lhs: Todo, rhs: Todo) -> Bool {
    
    return lhs.id == rhs.id
}



extension Todo: Equatable {}


extension Todo: Hashable {
   
    public var hashValue: Int {
    
    return "\(title)".hashValue
    }
    
    
    
}

extension Array where Element: Todo {
    
    public var asDictionary: [[String:AnyObject]] {
        
        var dictionaries = [[String:AnyObject]]()
        
        for element in self {
            
            dictionaries.append(element.asDictionary)
        }
        
        return dictionaries
    }
}
