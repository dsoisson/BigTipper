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

var alphabet = (
    (letter: "a", number: 0),
    (letter: "b", number: 1),
    (letter: "c", number: 2),
    (letter: "d", number: 3))

var a = 0
var b = 1
var c = 2

var message = "abc is cba"
var shift = 2

for i in message.characters {
    print(i)
}
