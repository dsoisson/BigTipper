import Foundation

public class Person {
    public var firstName: String
    public var lastName: String
    
    public init(first: String, last: String){
        firstName = first
        lastName = last
    }
    
    deinit{
        print("person is gone")
    }
}