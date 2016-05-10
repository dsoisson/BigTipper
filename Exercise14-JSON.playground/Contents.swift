/*:
 - - -
 * callout(Exercise): Using the data in your Container from Exercise 13, create the appropriate JSON payload and deserialize it into instance of your data to populate your container with the JSON payload. Then serialize the data back into a JSON payload.
 
 **Constraints:**
 - New methods where appropriate to deserialize and serialize the data in your container.
*/
import Foundation

typealias Payload = [String: AnyObject]



print("----Person data type----")
class Person: Equatable {
    
    var first: String
    var last: String
    
    init(first: String, last: String){
        self.first = first
        self.last = last
    }
}

func ==(lhs: Person, rhs: Person) -> Bool {
    
    return lhs.first == rhs.first && lhs.last == rhs.last
}

var persons = Database<Person>()
persons.addItem(Person(first: "Bobby", last: "Joe"))
persons.addItem(Person(first: "Samantha", last: "Sue"))
persons.addItem(Person(first: "Forest", last: "Gump"))

persons.items



