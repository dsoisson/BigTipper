import Foundation

public protocol Container {
    associatedtype ItemType
    func addItem (item: ItemType)
    func removeItem (item: ItemType) -> ItemType?
    var count: Int {get}
    subscript(i: Int) -> ItemType {get}
    
}

public typealias Student = [String:String]
//public typealias Student<T> = [T:T]


func iterator<T>(items: [T], closure: (item: T) -> Void) {
    
    for index in 0 ..< items.count {
        
        closure(item: items[index])
    }
}

// Iterate over each element in the array
public func each<T>(items: [T], closure: (item: T, index: Int) -> Void) {
    
    var index = 0;
    iterator(items) { (item) in
        
        closure(item: item, index: index)
        
        index += 1
    }
}


// Returns true if all of the elements is not false
public func all<T>(items: [T], closure: (item: T) -> Bool) -> Bool {
    
    var all = true
    
    iterator(items) { (item) -> Void in

        if all && !closure(item: item) {
            
            all = false
        }
    }

    return all
}

// Returns true if at least one of the elements is not false
public func any<T>(items: [T], closure: (item: T) -> Bool) -> Bool {

    var any = false
    
    iterator(items) { (item) -> Void in
        
        if !any && closure(item: item) {
            
            any = true
        }
    }
    
    return any
}

// Returns the index at which element can be found
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

// Returns true if the element is present
public func contains<T>(items: [T], closure: (item: T) -> Bool) -> Bool {
    
    var found = false
    
    iterator(items) { (item) -> Void in
        
        if !found && closure(item: item) {

            found = true
        }
    }
    
    return found
}

// Returns an array of all the elements that pass a truth test
public func filter<T>(items: [T], closure: (item: T) -> Bool) -> [T]? {
    
    var filter = [T]()

    iterator(items) { (item) -> Void in
        
        if closure(item: item) {
            
            filter.append(item)
        }
    }

    return !filter.isEmpty ? filter : nil
}

// Returns the elements in the array without the elements that pass a truth test
public func reject<T>(items: [T], closure: (item: T) -> Bool) -> [T]? {

    var keep = [T]()

    iterator(items) { (item) -> Void in

        if !closure(item: item) {

            keep.append(item)
        }
    }

    return !keep.isEmpty ? keep : nil
}

// Returns an array of a specific value from all the elements
public func pluck<T>(items: [T], closure: (item: T) -> AnyObject) -> [AnyObject] {

    var plucked = [AnyObject]()

    iterator(items) { plucked.append(closure(item: $0)) }
    
    return plucked
    
}

