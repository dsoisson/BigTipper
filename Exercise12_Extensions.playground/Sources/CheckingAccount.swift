import Foundation

public class CheckingAccount: Account {

    public var description: String {
        return "Checking"
    }
    
    public var customer: Customer {
        return self.customer
    }
    
    public func debit(amount: Double) throws {
        balance = self.balance - amount
    }
    
    deinit {
        print("deinit checking")
    }
}
