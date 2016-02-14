/*:
**Exercise:** You have a secret message to send. Write a playground that can encrypt strings with an alphabetical [caesar cipher](https://en.wikipedia.org/wiki/Caesar_cipher). This cipher can ignore numbers, symbols, and whitespace. Add a shift variable to indicate how many places to shift.
>> **Example Output:**
* Decrypted: Nearly all men can stand adversity, but if you want to test a man's character, give him power
* Encrypted: arneyl nyy zra pna fgnaq nqirefvgl, ohg vs lbh jnag gb grfg n zna'f punenpgre, tvir uvz cbjre
>> **Constraints:**
* Use a `switch` statment
* Use a loop statement
*/

/*:
**The encryption can also be represented using modular arithmetic by first transforming the letters into numbers, according to the scheme, A = 0, B = 1,..., Z = 25.[1] 

Encryption of a letter x by a shift n can be described mathematically as
E_n(x) = (x + n) \mod {26}.

Decryption is performed similarly,
D_n(x) = (x - n) \mod {26}.

(There are different definitions for the modulo operation. In the above, the result is in the range 0...25. I.e., if x+n or x-n are not in the range 0...25, we have to subtract or add 26.)
*/

import Foundation


var letterLists = [
    (loc: 0, alphabet: "ABCDEFGHIJKLMNOPQRSTUVWXYZ"),
    (loc: 1, alphabet: "BCDEFGHIJKLMNOPQRSTUVWXYZA"),
    (loc: 2, alphabet: "CDEFGHIJKLMNOPQRSTUVWXYZAB"),
    (loc: 3, alphabet: "DEFGHIJKLMNOPQRSTUVWXYZABC"),
    (loc: 4, alphabet: "EFGHIJKLMNOPQRSTUVWXYZABCD"),
    (loc: 5, alphabet: "FGHIJKLMNOPQRSTUVWXYZABCDE"),
    (loc: 6, alphabet: "GHIJKLMNOPQRSTUVWXYZABCDEF"),
    (loc: 7, alphabet: "HIJKLMNOPQRSTUVWXYZABCDEFG"),
    (loc: 8, alphabet: "IJKLMNOPQRSTUVWXYZABCDEFGH"),
    (loc: 9, alphabet: "JKLMNOPQRSTUVWXYZABCDEFGHI"),
    (loc: 10, alphabet: "KLMNOPQRSTUVWXYZABCDEFGHIJ"),
    (loc: 11, alphabet: "LMNOPQRSTUVWXYZABCDEFGHIJK"),
    (loc: 12, alphabet: "MNOPQRSTUVWXYZABCDEFGHIJKL"),
    (loc: 13, alphabet: "NOPQRSTUVWXYZABCDEFGHIJKLM"),
    (loc: 14, alphabet: "OPQRSTUVWXYZABCDEFGHIJKLMN"),
    (loc: 15, alphabet: "PQRSTUVWXYZABCDEFGHIJKLMNO"),
    (loc: 16, alphabet: "QRSTUVWXYZABCDEFGHIJKLMNOP"),
    (loc: 17, alphabet: "RSTUVWXYZABCDEFGHIJKLMNOPQ"),
    (loc: 18, alphabet: "STUVWXYZABCDEFGHIJKLMNOPQR"),
    (loc: 19, alphabet: "TUVWXYZABCDEFGHIJKLMNOPQRS"),
    (loc: 20, alphabet: "UVWXYZABCDEFGHIJKLMNOPQRST"),
    (loc: 21, alphabet: "VWXYZABCDEFGHIJKLMNOPQRSTU"),
    (loc: 22, alphabet: "WXYZABCDEFGHIJKLMNOPQRSTUV"),
    (loc: 23, alphabet: "XYZABCDEFGHIJKLMNOPQRSTUVW"),
    (loc: 24, alphabet: "YZABCDEFGHIJKLMNOPQRSTUVWX"),
    (loc: 25, alphabet: "ZABCDEFGHIJKLMNOPQRSTUVWXY")
]

var message = "abe lincoln"
var shift = 35

var newKey = shift%26
var newAlpha = letterLists[newKey].alphabet
//need to substitute 'newKey' in 'newAlpha' to find the 'newKey'th

var newMessage = ""

for i in message.uppercaseString.characters {
    switch i {
    case "A":
        var range = newAlpha.startIndex.advancedBy(0)...newAlpha.startIndex.advancedBy(0)
        var substring = newAlpha[range]
        newMessage += substring
    case "B":
        var range = newAlpha.startIndex.advancedBy(1)...newAlpha.startIndex.advancedBy(1)
        var substring = newAlpha[range]
        newMessage += substring
    case "C":
        var range = newAlpha.startIndex.advancedBy(2)...newAlpha.startIndex.advancedBy(2)
        var substring = newAlpha[range]
        newMessage += substring
    case "D":
        var range = newAlpha.startIndex.advancedBy(3)...newAlpha.startIndex.advancedBy(3)
        var substring = newAlpha[range]
        newMessage += substring
    case "E":
        var range = newAlpha.startIndex.advancedBy(4)...newAlpha.startIndex.advancedBy(4)
        var substring = newAlpha[range]
        newMessage += substring
    case "F":
        var range = newAlpha.startIndex.advancedBy(5)...newAlpha.startIndex.advancedBy(5)
        var substring = newAlpha[range]
        newMessage += substring
    case "G":
        var range = newAlpha.startIndex.advancedBy(6)...newAlpha.startIndex.advancedBy(6)
        var substring = newAlpha[range]
        newMessage += substring
    case "H":
        var range = newAlpha.startIndex.advancedBy(7)...newAlpha.startIndex.advancedBy(7)
        var substring = newAlpha[range]
        newMessage += substring
    case "I":
        var range = newAlpha.startIndex.advancedBy(8)...newAlpha.startIndex.advancedBy(8)
        var substring = newAlpha[range]
        newMessage += substring
    case "J":
        var range = newAlpha.startIndex.advancedBy(9)...newAlpha.startIndex.advancedBy(9)
        var substring = newAlpha[range]
        newMessage += substring
    case "K":
        var range = newAlpha.startIndex.advancedBy(10)...newAlpha.startIndex.advancedBy(10)
        var substring = newAlpha[range]
        newMessage += substring
    case "L":
        var range = newAlpha.startIndex.advancedBy(11)...newAlpha.startIndex.advancedBy(11)
        var substring = newAlpha[range]
        newMessage += substring
    case "M":
        var range = newAlpha.startIndex.advancedBy(12)...newAlpha.startIndex.advancedBy(12)
        var substring = newAlpha[range]
        newMessage += substring
    case "N":
        var range = newAlpha.startIndex.advancedBy(13)...newAlpha.startIndex.advancedBy(13)
        var substring = newAlpha[range]
        newMessage += substring
    case "O":
        var range = newAlpha.startIndex.advancedBy(14)...newAlpha.startIndex.advancedBy(14)
        var substring = newAlpha[range]
        newMessage += substring
    case "P":
        var range = newAlpha.startIndex.advancedBy(15)...newAlpha.startIndex.advancedBy(15)
        var substring = newAlpha[range]
        newMessage += substring
    case "Q":
        var range = newAlpha.startIndex.advancedBy(16)...newAlpha.startIndex.advancedBy(16)
        var substring = newAlpha[range]
        newMessage += substring
    case "R":
        var range = newAlpha.startIndex.advancedBy(17)...newAlpha.startIndex.advancedBy(17)
        var substring = newAlpha[range]
        newMessage += substring
    case "S":
        var range = newAlpha.startIndex.advancedBy(18)...newAlpha.startIndex.advancedBy(18)
        var substring = newAlpha[range]
        newMessage += substring
    case "T":
        var range = newAlpha.startIndex.advancedBy(19)...newAlpha.startIndex.advancedBy(19)
        var substring = newAlpha[range]
        newMessage += substring
    case "U":
        var range = newAlpha.startIndex.advancedBy(20)...newAlpha.startIndex.advancedBy(20)
        var substring = newAlpha[range]
        newMessage += substring
    case "V":
        var range = newAlpha.startIndex.advancedBy(21)...newAlpha.startIndex.advancedBy(21)
        var substring = newAlpha[range]
        newMessage += substring
    case "W":
        var range = newAlpha.startIndex.advancedBy(22)...newAlpha.startIndex.advancedBy(22)
        var substring = newAlpha[range]
        newMessage += substring
    case "X":
        var range = newAlpha.startIndex.advancedBy(23)...newAlpha.startIndex.advancedBy(23)
        var substring = newAlpha[range]
        newMessage += substring
    case "Y":
        var range = newAlpha.startIndex.advancedBy(24)...newAlpha.startIndex.advancedBy(24)
        var substring = newAlpha[range]
        newMessage += substring
    case "Z":
        var range = newAlpha.startIndex.advancedBy(25)...newAlpha.startIndex.advancedBy(25)
        var substring = newAlpha[range]
        newMessage += substring

    default: var substring = String(i.writeTo(&newMessage))
    }

}

print(newMessage)
//shift = -shift
newKey = 26 - (shift%26)

var origmessage = ""
newAlpha = letterLists[newKey].alphabet

for i in newMessage.uppercaseString.characters {
    switch i {
    case "A":
        var range = newAlpha.startIndex.advancedBy(0)...newAlpha.startIndex.advancedBy(0)
        var substring = newAlpha[range]
        origmessage += substring
    case "B":
        var range = newAlpha.startIndex.advancedBy(1)...newAlpha.startIndex.advancedBy(1)
        var substring = newAlpha[range]
        origmessage += substring
    case "C":
        var range = newAlpha.startIndex.advancedBy(2)...newAlpha.startIndex.advancedBy(2)
        var substring = newAlpha[range]
        origmessage += substring
    case "D":
        var range = newAlpha.startIndex.advancedBy(3)...newAlpha.startIndex.advancedBy(3)
        var substring = newAlpha[range]
        origmessage += substring
    case "E":
        var range = newAlpha.startIndex.advancedBy(4)...newAlpha.startIndex.advancedBy(4)
        var substring = newAlpha[range]
        origmessage += substring
    case "F":
        var range = newAlpha.startIndex.advancedBy(5)...newAlpha.startIndex.advancedBy(5)
        var substring = newAlpha[range]
        origmessage += substring
    case "G":
        var range = newAlpha.startIndex.advancedBy(6)...newAlpha.startIndex.advancedBy(6)
        var substring = newAlpha[range]
        origmessage += substring
    case "H":
        var range = newAlpha.startIndex.advancedBy(7)...newAlpha.startIndex.advancedBy(7)
        var substring = newAlpha[range]
        origmessage += substring
    case "I":
        var range = newAlpha.startIndex.advancedBy(8)...newAlpha.startIndex.advancedBy(8)
        var substring = newAlpha[range]
        origmessage += substring
    case "J":
        var range = newAlpha.startIndex.advancedBy(9)...newAlpha.startIndex.advancedBy(9)
        var substring = newAlpha[range]
        origmessage += substring
    case "K":
        var range = newAlpha.startIndex.advancedBy(10)...newAlpha.startIndex.advancedBy(10)
        var substring = newAlpha[range]
        origmessage += substring
    case "L":
        var range = newAlpha.startIndex.advancedBy(11)...newAlpha.startIndex.advancedBy(11)
        var substring = newAlpha[range]
        origmessage += substring
    case "M":
        var range = newAlpha.startIndex.advancedBy(12)...newAlpha.startIndex.advancedBy(12)
        var substring = newAlpha[range]
        origmessage += substring
    case "N":
        var range = newAlpha.startIndex.advancedBy(13)...newAlpha.startIndex.advancedBy(13)
        var substring = newAlpha[range]
        origmessage += substring
    case "O":
        var range = newAlpha.startIndex.advancedBy(14)...newAlpha.startIndex.advancedBy(14)
        var substring = newAlpha[range]
        origmessage += substring
    case "P":
        var range = newAlpha.startIndex.advancedBy(15)...newAlpha.startIndex.advancedBy(15)
        var substring = newAlpha[range]
        origmessage += substring
    case "Q":
        var range = newAlpha.startIndex.advancedBy(16)...newAlpha.startIndex.advancedBy(16)
        var substring = newAlpha[range]
        origmessage += substring
    case "R":
        var range = newAlpha.startIndex.advancedBy(17)...newAlpha.startIndex.advancedBy(17)
        var substring = newAlpha[range]
        origmessage += substring
    case "S":
        var range = newAlpha.startIndex.advancedBy(18)...newAlpha.startIndex.advancedBy(18)
        var substring = newAlpha[range]
        origmessage += substring
    case "T":
        var range = newAlpha.startIndex.advancedBy(19)...newAlpha.startIndex.advancedBy(19)
        var substring = newAlpha[range]
        origmessage += substring
    case "U":
        var range = newAlpha.startIndex.advancedBy(20)...newAlpha.startIndex.advancedBy(20)
        var substring = newAlpha[range]
        origmessage += substring
    case "V":
        var range = newAlpha.startIndex.advancedBy(21)...newAlpha.startIndex.advancedBy(21)
        var substring = newAlpha[range]
        origmessage += substring
    case "W":
        var range = newAlpha.startIndex.advancedBy(22)...newAlpha.startIndex.advancedBy(22)
        var substring = newAlpha[range]
        origmessage += substring
    case "X":
        var range = newAlpha.startIndex.advancedBy(23)...newAlpha.startIndex.advancedBy(23)
        var substring = newAlpha[range]
        origmessage += substring
    case "Y":
        var range = newAlpha.startIndex.advancedBy(24)...newAlpha.startIndex.advancedBy(24)
        var substring = newAlpha[range]
        origmessage += substring
    case "Z":
        var range = newAlpha.startIndex.advancedBy(25)...newAlpha.startIndex.advancedBy(25)
        var substring = newAlpha[range]
        origmessage += substring
        
    default: var substring = String(i.writeTo(&origmessage))
    }
    
}

print(origmessage)

/*:
Try using sample from Matt Sheets
*/
let alphaLower = "abcdefghijklmnopqrstuvwxyz"  //using only 1 alphabet string for entire program both encryption and decryption
let alphaUpper = alphaLower.uppercaseString  //converting lower case to uppercase string to be used when a capital letter is detected
let alphaLowerCount = alphaLower.characters.count  //count of the alphabet helpful in determining key
let alphaUpperCount = alphaUpper.characters.count

let input = "Nearly all men can stand adversity, but if you want to test a man's character, give him power."  //the message to be encrypted
var shiftValue = 191 //the value used in the cipher
var encrypted = ""  //establish an empty string variable to hold the value of the encryption
var decrypted = ""  //establish an empty string variable to hold the value of the decryption
var encrypting = true
repeat {  //set up a loop to fill both the encrpyted and decrypted variables
    let text = encrypting ? input : encrypted //establish new string constant. if encrypting is true set it to the input variable else set it to the encrypted value
    for character in text.characters { //loop through all the characters in the text variable
        let string = String(character) //assign the character as a string
        
        let alpha: String //establish a new string constant to hold a lowercase or uppercase letter
        let alphaCount: Int //establish a new integer constant to hold...
        if alphaLower.containsString(string) { //compare the variable 'string' (representing the current letter in the message to be encrypted) to the lowercase alphabet string.  If there is a match, then the letter in the message is lowercase, otherwise it is uppercase. Use the corresponding lowercase alphabet, uppercase alphabet.
            alpha = alphaLower
        } else if alphaUpper.containsString(string) {
            alpha = alphaUpper
        } else { //spaces, punctuation
            encrypting ? encrypted.appendContentsOf(string) : decrypted.appendContentsOf(string) //add the space or punctuation to the encrypting or decrypting string
            continue
        }
        alphaCount = alpha.characters.count //count how many characters are in the alphabet string
        
        let found = alpha.rangeOfString(string)! //with spaces and punctuation, this is an optional and needs unwrapped with the !  Establishing the where in the alpha string the letter is located
        let distance: Int //establishing a integer constant to hold the distance along the string
        var advancedBy: Int //establishing an integer variable to hold the distance to move
        if encrypting { //
            print(found.startIndex)
            print(alpha.endIndex)
            print(found.startIndex.distanceTo(alpha.endIndex))
            distance = alphaCount - found.startIndex.distanceTo(alpha.endIndex) //why not just use found.startIndex here?
            print(distance)
            advancedBy = (distance + shiftValue) % alphaCount //mod (%) allows "wrapping" around the alphabet
        } else { //for decrypting
            distance = alpha.startIndex.distanceTo(found.startIndex) //why not just use found.startIndex here? 
            print(found.startIndex)
            print(distance)
            advancedBy = (distance - shiftValue) % alphaCount //this results in a negative value for all letters but A
            if advancedBy < 0 { //account for negative values by 
                advancedBy = alphaCount - -advancedBy //how is this subtracting a negative number working? for the first letter 'n' with an 'advancedBy' value of -13, according to this formula 26 - (-13) = 39, not 13.
                print(advancedBy)
            }
        }
        
        let append = alpha.substringWithRange(alpha.startIndex.advancedBy(advancedBy)..<alpha.startIndex.advancedBy(advancedBy + 1)) //establish a string constant consisting of one letter from the lowercase or uppercase alphabet established by the advanced by
        encrypting ? encrypted.appendContentsOf(append) : decrypted.appendContentsOf(append) //if encrypting is true then add the append string (single letter) to the string variable 'encrypted', otherwise add it to the string variable "decrypted".
    }
    
    encrypting = !encrypting //after all characters in for characters in text.characters have been analyzed and appended to the encrypted string, the program exits the loop and switches to decrypting by make encrypting false. At this point, 'decrypted' is still empty, so the while loop continues. 
} while decrypted.isEmpty 

print("Decrypted: \(decrypted)")
print("Encrypted: \(encrypted)")



