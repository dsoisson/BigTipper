/*:
**Exercise:** We need to model the set of possible iPhones manufactured. Replace each possible tuple property value with an enumeration that would be appropriate to the current non enumeration value.
*/
import Foundation

var indx = 1

typealias aPhone = (modelName: String, modelNumbers: [String], hardwareStrings: [String], osVersions: [Int])
typealias allPhones = [(modelName: String, modelNumbers: [String], hardwareStrings: [String], osVersions: [Int])]

//instantiate empty variables to accept user input later
var modelName = ""
var modelNumber = ""
var hardware = ""
var osVersion = 0
var device: (String)

//user inputs
modelName = "iPhone"
modelNumber = "A1203"
hardware = "iPhone 8,1"
osVersion = 5
var newPhone: aPhone


//creating a device passing in enumeration ModelName
if ((getDeviceWithModelName(ModelName.self, myModel: modelName)).1 && (getDeviceWithModelNumber(ModelNumber.self, myModelNumber: modelNumber)).1 && (getDeviceWithHardwareString(HardwareString.self, myHardware: hardware)).1
    && (getDeviceWithOSVersion(OSVersion.self, myOS: osVersion)).1){
    
        newPhone = (modelName: modelName, modelNumbers: [modelNumber], hardwareStrings: [hardware], osVersions: [osVersion])
}

//print("Your dream phone is \(newPhone)")

//get device with model name
print(getDeviceWithModelName(ModelName.self, myModel: modelName).0)

//get device with model number
print(getDeviceWithModelNumber(ModelNumber.self, myModelNumber: modelNumber).0)

//get device with hardware string
print(getDeviceWithHardwareString(HardwareString.self, myHardware: hardware).0)

//get device with OS Version
print(getDeviceWithOSVersion(OSVersion.self, myOS: osVersion).0)



//if allValid {
//    print("Your new dream device is an \(modelName), model number: \(modelNumber) with hardware \(hardware) and with OS Version \(osVersion)")
//}

//find the validated user input in the array of tuple 'phones'
//first step is find the user input somewhere in the array of tuples...
//if found, determine what index in the array it equates to...
//then, using the same index number, return the model name of the same index.

//pass in enums for model names. If selected name

//testing for valid model name in array of tuples
func testPhone (applePhones: allPhones, _ nameOfModel: String) -> String {
    var success = false
    
    for (a, _, _, _) in applePhones {
        if nameOfModel == a {
            success = !success
        }
    }
    
    print(success)
    
    guard success else {
        return("\(nameOfModel) is not a valid model name. Try again.")
        
    }
    
    return("You have a valid model \(nameOfModel)")
}



testPhone(phones, modelName)

//func deviceCreation (modName: String, modNumber: String, hrdWre: String, vers: Int) ->aPhone{
//    var modelName: [String]
//    var modelNumbers: [String]
//    var hardwareStrings: [String]
//    var osVersions: [Int]
//    var newDevice = (modelName: modelName, modelNumbers: modelNumbers, hardwareStrings: hardwareStrings, osVersions: osVersions)
//    return newDevice
//}


//other ideas for completion of assignment createPhone(test)

//Have user enter either a Model Name, Model Number, Hardware String or OSVersion to search for
//Have user choose specific description of model Name, Model Number, Hardware String or OSVersion that they need
//check to see if user entered 1 of 4 options of Model Name, Model Number, Hardware String or OSVersion, if not, message 'Not searchable' if pass, move on to next step.
//check to see if user entered appropriate description: use 1 of 4 selections to search different enums for the description. If not, 'no such..' If pass, move on to next step.
//use valid description to search through array of tuples and match on device, return device name


/*:
>> **Constraints:**
* Create the following Enumerations:
* ModelName = Enumeration for all the model names
* ModelNumber = Enumeration for all the model numbers
* HardwareString = Enumeration for all hardware string
* OSVersion = Enumeration for all os versions
* Create the following Functions
* Create a device passing in as arguments each enumeration
* Validate the parameters using a guard statement
* Throw an error that's appropriate to the invalid parameter value
* Return a tuple similar to above only using the above enumerations
* Get Device with ModelName
* Get Device with ModelNumber
* Get Device with HardwareString
* Get Devices with OSVersion
*/
