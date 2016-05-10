import Foundation

public class SavingsAccount: Account {
    
    public var description: String {
        return "Savings"
    }

    public var customer: Customer {
        return self.customer
    }
    
    private let interest = 2.5
    
//    public override init(customer: Customer) {
//        
//        super.init(customer: customer)
//        
//        balance = 500.00
//    }

    public func applyInterest() {

        balance *= (interest / 100) + 1
    }
    
    deinit {
        
        print("deinit savings")
    }
}
