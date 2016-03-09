//: [Previous](@previous)
/*:
**Exercise:** You have a secret message to send. Write a playground that can encrypt strings with an alphabetical [caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher). This cipher can ignore numbers, symbols, and whitespace.
>> **Example Output:**
* Decrypted: Nearly all men can stand adversity, but if you want to test a man's character, give him power
* Encrypted: arneyl nyy zra pna fgnaq nqirefvgl, ohg vs lbh jnag gb grfg n zna'f punenpgre, tvir uvz cbjre
>> **Constraints:**
* The encrypted and decrypted text is case sensitive
* Add a shift variable to indicate how many places to shift
*/

import Foundation


import Foundation

let alpha = "abcdefghijklmnopqrstuvwxyz"
let alphaCaps = alpha.uppercaseString

var message = "This that and the other."
var shift = 8
var encoded = ""
var decoded = ""
var isEncoding = true

//func decode(message: String, shiftValue: Int) {
//    //determine position number of encoded character
//    
//    for i in alpha.characters.count {
//        print(i);
//    }
//}
//
//
//func encode(message: String, shiftValue: Int) {
//    //
//}
//
//decode(message, shiftValue: shift)
//
//

//: [Next](@next)
