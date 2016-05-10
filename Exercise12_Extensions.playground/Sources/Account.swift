import Foundation

public protocol Account {

    var description: String { get }
    
    var customer: Customer { get set }
    
    var balance: Double { get set }
    
    func debit(amount: Double) throws

    func credit(amount: Double)
    
}

extension Account {
    public var balance: Double {
        get {
            if self.description == "Checking"
            {
                return 0.0
            }
            else {
                return 500.0
            }
        }
        set {
            
        }
            
        }
        
}

extension Account {
    
    public mutating func debit(amount: Double) throws {
        
        guard (self.balance - amount) >= 0 else {
            
            throw TransactionError.InsufficientFunds(balance: self.balance, debiting: amount)
        }
        
        self.balance -= amount
    }
    
    public mutating func credit(amount: Double) {
        
        self.balance += amount
    }
}
