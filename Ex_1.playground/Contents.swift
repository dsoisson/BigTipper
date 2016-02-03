/*:
**Exercise:**
Your a big tipper! When ever you go out to eat you tip 20% of the bill and never tip less than $3. Create a playground that prints the tip amount and the total amount. Within the playground, you should be able to change the bill to see how the tip amount varies.
>> **Example Output:**
* `What is the bill? $x.xx`
* `What is the tip percentage? x`
* `The tip is $x.xx`
* `The total is $x.xx`
*/
import UIKit
import Foundation

var bigTipper = (billAmount: 9.70, tipPercentage: 20.0, minTipAmount: 3.00)
let tipPercentageDec = bigTipper.tipPercentage / 100.00

var tipAmount = bigTipper.billAmount * tipPercentageDec

if tipAmount < bigTipper.minTipAmount {
    tipAmount = bigTipper.minTipAmount
}

let totalAmount = bigTipper.billAmount + tipAmount

print("What is the bill? $" + String(format:"%.2f", bigTipper.billAmount))

if tipAmount > bigTipper.minTipAmount {
    print("What is the tip percentage? " + String(format: "%.2f", bigTipper.tipPercentage) + "%")
} else {
    print("What is the tip percentage? " + String(format: "%.2f", (100*bigTipper.minTipAmount/bigTipper.billAmount)) + "%")
}

print("The tip is $" + String(format:"%.2f", tipAmount))
print("The total is $" + String(format:"%.2f", totalAmount))


