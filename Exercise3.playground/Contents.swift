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

/*: 
*Try using nested tuples
*/


//var alphabet = (
//    (letter: "a", number: 0),
//    (letter: "b", number: 1),
//    (letter: "c", number: 2),
//    (letter: "d", number: 3))

//var test = ("a", "b", "c", "d")

/*: 
Try using enumeration
*/

//enum Alphabet: Int {
//    case A = 0, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z
//}

//var message = "Abe Lincoln"
//var shift = 13
//var secretMessage = ""


//for i in message.lowercaseString.characters {
//    switch i {
//    case "a":
//            var secretLetter = (Alphabet(rawValue: (Alphabet.A.rawValue + shift)%26))
//            print(secretLetter!)
//        
//    case "b":
//            var secretLetter = (Alphabet(rawValue: (Alphabet.B.rawValue + shift)%26))
//            print(secretLetter!)
//        
//    case "c":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.C.rawValue + shift)%26))
//        print(secretLetter!)
//        
//    case "d":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.D.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "e":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.E.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "f":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.F.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "g":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.G.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "h":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.H.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "i":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.I.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "j":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.J.rawValue + shift)%26))
//        print(secretLetter!)
//    
//    case "k":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.K.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "l":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.L.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "m":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.M.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "n":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.N.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "o":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.O.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "p":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.P.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "q":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.Q.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "r":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.R.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "s":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.S.rawValue + shift)%26))
//        print(secretLetter!)
//        
//    case "t":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.T.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "u":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.U.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "v":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.V.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "w":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.W.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "x":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.X.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "y":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.Y.rawValue + shift)%26))
//        print(secretLetter!)
//
//    case "z":
//        var secretLetter = (Alphabet(rawValue: (Alphabet.Z.rawValue + shift)%26))
//        print(secretLetter!)
//
//    default: print(i)
//    }
//}
//

/*:
Try using plain tuples
*/

var test = (
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
)

var message = "Abe Lincoln"
var shift = 7
var newAlpha = test.7.alphabet
var newMessage = ""

for i in message.lowercaseString.characters {
    switch i {
    case "a":
        var range = newAlpha.startIndex.advancedBy(0)...newAlpha.startIndex.advancedBy(0)
        var substring = newAlpha[range]
        newMessage += substring
    
    case "b":
        var range = newAlpha.startIndex.advancedBy(1)...newAlpha.startIndex.advancedBy(1)
        var substring = newAlpha[range]
        newMessage += substring

    case "c":
        var range = newAlpha.startIndex.advancedBy(2)...newAlpha.startIndex.advancedBy(2)
        var substring = newAlpha[range]
        newMessage += substring

    case "d":
        var range = newAlpha.startIndex.advancedBy(3)...newAlpha.startIndex.advancedBy(3)
        var substring = newAlpha[range]
        newMessage += substring

    case "e":
        var range = newAlpha.startIndex.advancedBy(4)...newAlpha.startIndex.advancedBy(4)
        var substring = newAlpha[range]
        newMessage += substring

    case "f":
        var range = newAlpha.startIndex.advancedBy(5)...newAlpha.startIndex.advancedBy(5)
        var substring = newAlpha[range]
        newMessage += substring

    default: var substring = String(i.writeTo(&newMessage))
    }

}

print(newMessage)


    
//}
//)



if test.0.loc == Int(shift) {
    print("worked")
}


print(shift)
var secretMessage = ""
var newKey = test.0
print(newKey)

//var foo: (x: Int) = 42
//println(foo.x)





//var a = 0
//var b = 1
//var c = 2
//var d = 3

//var message = "abc is cba"
//var shift = 2
//var message2:Int=()

//for i in message.characters {
//   switch i {
//    case "a": message2 = "a"
//    default: print("")
//    }
//    print(message2)
//}
