import Foundation

enum AccountType {
    case Checking
    case Savings
    case Retirement
}

enum Action {
    case Open
    case Debit
    case Credit
    case Done
}

protocol Teller {
    var name: String { get }
    var customer: Customer { get set }
    func doSomething(action: Action) -> String
    }


protocol Account {
    var balance: Double { get set }
    var accountType: AccountType { get set }

    mutating func debit(amount: Double)
}



protocol Customer {
    var name: String { get }
    var accounts: [Account?] { get set }
}

class LeadTeller: Teller {
    var name: String
    var customer: Customer
    
    init(name: String, customer: Customer){
        self.name = name
        self.customer = customer
    }
    func doSomething(action: Action) -> String {
        switch action {
        case .Open:
            return("Opened")
        case .Debit:
            return("Debited")
        case .Credit:
            return("Credited")
        case .Done:
            return("Finished")

        }
    }
}

struct PrimaryChecking: Account  {
    var balance: Double = 20.0
    var accountType: AccountType = .Checking
    mutating func debit(amount: Double) {
        balance -= amount
    }
}

struct RichCustomer: Customer {
    var name: String
    var accounts: [Account?]
    init(name: String){
        self.name = name
        
    }
    
}

var offShoreAccount = PrimaryChecking(balance: 5000.0, accountType: .Checking)

//var newCustomer = RichCustomer(name: "Rich", accounts: [offShoreAccount])

var teller: Teller = LeadTeller(name: "Jane", customer: RichCustomer(name: "Rich"))



