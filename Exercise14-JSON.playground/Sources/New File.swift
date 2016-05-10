import Foundation

import Foundation

public protocol Container {
    
    associatedtype ItemType
    
    func addItem(item: ItemType)
    
    func removeItem(item: ItemType) -> ItemType?
    
    var count: Int { get }
    
    subscript(i: Int) -> ItemType { get }
}

public class Database<Element: Equatable> {
    
    public typealias ItemType = Element
    
    public var items: [ItemType]
    
    public init() {
        
        items = [ItemType]()
    }
}

extension Database: Container {
    
    public func addItem(item: ItemType) {
        items.append(item)
    }
    
    public func removeItem(item: ItemType) -> ItemType? {
        let index = items.indexOf { $0 == item }
        if index != nil {
            return items.removeAtIndex(index!)
        }
        return nil
    }
    
    public var count: Int {
        return items.count
    }
    
    public subscript(i: Int) -> ItemType {
        return items[i]
    }
}
