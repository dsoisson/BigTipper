/*:
 - - -
 * callout(Exercise): Leveraging protocols and the delegation design pattern, your task is to build a simple bank teller system. The teller’s job responsibilities are to open, credit, debit savings and checking accounts. The teller is not sure what really happens when they perform their responsibilities, it just works.
 
 **Constraints:**
 - Create an audit delegate that tracks when an account is opened, credited and debited
 - Create a protocol for which a savings and checking accounts need to conform
 - Create a teller class with customers and accounts
 - Perform the teller's responsibilities
 
 */

import Foundation

protocol Openable {
    
}

class Opener: Openable{
    
}

let opener = Opener()

protocol Creditable {
    
}

class Creditor: Creditable {
    
}

let creditor = Creditor()

protocol Debitable {
    
}

class Debitor: Debitable {
    
}

let debitor = Debitor()


protocol DoableAction {
    
    var action: String { get }
}

protocol DoableActionDelegate {
    
    func willDo(what: DoableAction)
    func doing(what: DoableAction)
    func didDo(what: DoableAction)
}

protocol Doable {
    
    func doingWhat()
}


class Account {
    var kind = ""
    var accountNumber = 0
    var balance = 0.0
}

let bobChecking1 = Account()
bobChecking1.kind = "Checking"
bobChecking1.accountNumber = 123
bobChecking1.balance = 50.0

let bobChecking2 = Account()
bobChecking2.kind = "Checking"
bobChecking2.accountNumber = 345
bobChecking2.balance = 200.0


class Customer {
    var customerName = ""
    var accounts = [Account]()
}

let bob = Customer()
bob.customerName = "Bob"
bob.accounts.append(bobChecking2)
bob.accounts.append(bobChecking1)
bob.accounts

class Teller {
    var tellerName = ""
    var customers = [Customer]()
}

let jane = Teller()
jane.tellerName = "Jane"
jane.customers.append(bob)

func debitAccount(customer: Customer, accountNum: [Account], dollar: Double) -> String {
    var value = ""
    var incrementor = 0
    for _ in customer.accounts {
        
        print(incrementor)
        incrementor += 1
//        customer.accounts[i].balance
        customer.accounts[0].balance -= dollar
        value += "printing \(customer.accounts[0].balance)"}
    return value
}

print(debitAccount(bob, accountNum: bob.accounts, dollar: 10.0))

class DoingNothing: DoableAction {
    var action: String {
        return "Doing Nothing"
    }
}
class OpenChecking: DoableAction {
    var action: String {
        return "Open Checking Account"
    }
}
class OpenSavings: DoableAction {
    var action: String {
        return "Open Savings Account"
        
    }
}
class CloseChecking: DoableAction {
    var action: String {
        return "Close Checking Account"
    }
}
class CloseSavings: DoableAction {
    var action: String {
        return "Close Savings Account"
    }
}
class DebitChecking: DoableAction {
    var action: String {
        return "Debit Checking Account"
    }
}
class DebitSavings: DoableAction {
    var action: String {
        return "Debit Savings Account"
    }
}
class CreditChecking: DoableAction {
    var action: String {
        return "Credit Checking Account"
    }
}
class CreditSavings: DoableAction {
    var action: String {
        return "Credit Savings Account"
    }
}

class DoingSomethingWithAccount: DoableActionDelegate {
    func willDo(what: DoableAction) {
        print("I will \(what.action)")
    }
    func doing(what: DoableAction) {
        print("I am \(what.action)")
    }
    func didDo(what: DoableAction) {
        print("\(what.action) was completed.")
    }
}

class TrackingAccountAction: DoableActionDelegate{
    func willDo(what: DoableAction) {
        print("I will track the \(what.action)")
    }
    func doing(what: DoableAction) {
        print("I am tracking the \(what.action)")
    }
    func didDo(what: DoableAction) {
        print("I tracked the \(what.action)")
    }
}

class DoingSomething: Doable {
    var action: DoableAction = DoingNothing()
    var delegate: DoableActionDelegate?
    func doingWhat() {
        delegate?.willDo(action)
        delegate?.doing(action)
        delegate?.didDo(action)
    }
}

let teller = DoingSomething()
teller.delegate = DoingSomethingWithAccount()
teller.doingWhat()

teller.action = CreditChecking()
teller.doingWhat()


