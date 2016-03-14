import Foundation

let alphaLower = "abcdefghijklmnopqrstuvwxyz"
let alphaUpper = alphaLower.uppercaseString  //converts lowercase alphabet to all uppercase
let alphaLowerCount = alphaLower.characters.count //counts the number of characters in the string alphaLower
let alphaUpperCount = alphaUpper.characters.count //counts the number of characters in the string alphaUpper

//create a fuction to turn the encrypt bool to true
//accept a string and an int and return a string (encrypted string)

public func encrypt(text: String, shiftValue: Int) -> String {
    return build(text, shiftValue: shiftValue, encrypt: true)
}

//create a function to turn the encrypt bool to false
//accept a string and an int (the shift value) and return a string (decrypted string)

public func decrypt(text: String, shiftValue: Int) -> String {
   return build(text, shiftValue: shiftValue, encrypt: false)
}


//create a function to either encrypt or decrypt the given string
//accept the string to be converted, the shift value int, and the bool to determine if it should be encrypted or decrypted

func build(text: String, shiftValue: Int, encrypt: Bool) -> String{
    //create a constant to act as the shift value.  If the shift value
    let shift = shiftValue == Int.max ? shiftValue - alphaLowerCount : shiftValue
    
    var string = "" //create an empty string to hold the encrypted or decrypted string
    
    //iterate through the characters of the string
    
    for character in text.characters {
        let letter = String(character) //assign constant to the character in the string
        
        //determine if that character is upper case or lower case
        let alphaAndCount = lowerOrUpper(letter) //call the function lowerOrUpper and pass the character 'letter'
        
        if alphaAndCount == nil {
            string.appendContentsOf(letter)
            continue
        }
        
        let alpha = alphaAndCount!.0
        let alphaCount = alphaAndCount!.1
        let found = alpha.rangeOfString(letter)!
        
        var advancedBy = 0
        if encrypt {
            let distance = alphaCount - found.startIndex.distanceTo(alpha.endIndex)
            advancedBy = (distance + shift)%alphaCount //
        } else {
            let distance = alpha.startIndex.distanceTo(alpha.endIndex)
            advancedBy = (distance - shift)%alphaCount
            advancedBy = advancedBy < 0 ? alphaCount - -advancedBy : advancedBy
        }
        
        let append = alpha.substringWithRange(alpha.startIndex.advancedBy(advancedBy)..<alpha.startIndex.advancedBy(advancedBy + 1))
        string.appendContentsOf(append)
    }
    return string 
    
}

//create a function that takes a single letter string and determines if it is an uppercase or lowercase letter by matching it to the lowercase alphabet or uppercase alphabet
func lowerOrUpper(character: String) -> (String, Int)? { //function takes a string and returns a string and integer
    
    var alpha = "" //create a new variable string to hold the uppercase or lowercase alphabet
    switch character { //use a switch case to determine if the letter passed in matches the uppercase or lowercase
    case _ where alphaLower.containsString(character):
        alpha = alphaLower
    case _ where alphaUpper.containsString(character):
        alpha = alphaUpper
    default:
        return nil //return nil if there is no letter passed in...either a blank space or punctuation
    }
    
    return (alpha, alpha.characters.count)
    }


