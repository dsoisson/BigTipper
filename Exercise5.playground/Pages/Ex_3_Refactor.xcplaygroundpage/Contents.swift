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
var alphaBet = ""
var letterAdd = ""
var message = "Nearly all men can stand adversity."
var shift = 7
var newPosition = 0
var encoded = ""
var decoded = ""
var encoding = true

//created loop to check each character in the message against the alphabet string, either lowercase or uppercase
for character in message.characters {
    
    //convert character to a string
    var newLetter = String(character)
    
    //determine if string letter is lowercase or uppercase or a space/punctuation and assign the appropriate alphabet
    switch newLetter {
    case _ where alpha.containsString(newLetter):
        alphaBet = alpha
    //alphaBet.rangeOfString(newLetter)!
    case _ where alphaCaps.containsString(newLetter):
        alphaBet = alphaCaps
    default: encoded.append(character)
    }
    
    //iterate through the alphabet, determine the position of the letter, change the position based on the shift value
    //append the letter to the encoded string
    
    for (var list, letter) in alphaBet.characters.enumerate() {
       
        if character == letter {
            newPosition = (list+shift)%26

            letterAdd = alphaBet.substringWithRange(alphaBet.startIndex.advancedBy(newPosition)..<alphaBet.startIndex.advancedBy(newPosition+1))
        
            encoded.appendContentsOf(letterAdd)
        
       
        }
    }
}

print(encoded)
message = encoded

for character in message.characters {
    
    //convert character to a string
    var newLetter = String(character)
    
    //determine if string letter is lowercase or uppercase or a space/punctuation and assign the appropriate alphabet
    switch newLetter {
    case _ where alpha.containsString(newLetter):
        alphaBet = alpha
        //alphaBet.rangeOfString(newLetter)!
    case _ where alphaCaps.containsString(newLetter):
        alphaBet = alphaCaps
    default: decoded.append(character)
    }
    
    //iterate through the alphabet, determine the position of the letter, change the position based on the shift value
    //append the letter to the encoded string
    
    for (var list, letter) in alphaBet.characters.enumerate() {
        
        if character == letter {
            if list-shift < 0 {
                newPosition = 26+((list-shift)%26)
            } else {
                newPosition = (list-shift)%26
            }
        
            letterAdd = alphaBet.substringWithRange(alphaBet.startIndex.advancedBy(newPosition)..<alphaBet.startIndex.advancedBy(newPosition+1))
            
            decoded.appendContentsOf(letterAdd)
            
        }
    }
}

print(decoded)




//: [Next](@next)
