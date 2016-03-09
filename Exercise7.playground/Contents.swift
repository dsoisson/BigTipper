/*:
**Exercise:** We need to model the set of possible iPhones manufactured. Replace each possible tuple property value with an enumeration that would be appropriate to the current non enumeration value.
*/
import Foundation

let iPhone          = (modelName: "iPhone", modelNumbers: ["A1203"], hardwareStrings: ["iPhone1,1"], osVersions: [1, 2, 3])
let iPhone3G        = (modelName: "iPhone 3G", modelNumbers: ["A1324", "A1241"], hardwareStrings: ["iPhone1,2"], osVersions: [2, 3, 4])
let iPhone3Gs       = (modelName: "iPhone 3Gs", modelNumbers: ["A1325", "A1303"], hardwareStrings: ["iPhone2,1"], osVersions: [3, 4, 5, 6])
let iPhone4         = (modelName: "iPhone 4", modelNumbers: ["A1349", "A1332"], hardwareStrings: ["iPhone3,1", "iPhone3,2", "iPhone3,3"], osVersions: [4, 5, 6, 7])
let iPhone4s        = (modelName: "iPhone 4S", modelNumbers: ["A1431", "A1387"], hardwareStrings: ["iPhone4,1"], osVersions: [5, 6, 7, 8, 9])
let iPhone5         = (modelName: "iPhone 5", modelNumbers: ["A1428", "A1429", "A1442"], hardwareStrings: ["iPhone5,1", "iPhone5,2"], osVersions: [6, 7, 8, 9])
let iPhone5c        = (modelName: "iPhone 5c", modelNumbers: ["A1532", "A1456", "A1507", "A1529"], hardwareStrings: ["iPhone5,3", "iPhone5,4"], osVersions: [7, 8, 9])
let iPhone5s        = (modelName: "iPhone 5s", modelNumbers: ["A1533", "A1453", "A1457", "A1530"], hardwareStrings: ["iPhone6,1", "iPhone6,2"], osVersions: [7, 8, 9])
let iPhone6         = (modelName: "iPhone 6", modelNumbers: ["A1549", "A1586"], hardwareStrings: ["iPhone7,2"], osVersions: [8, 9])
let iPhone6Plus     = (modelName: "iPhone 6 Plus", modelNumbers: ["A1522", "A1524"], hardwareStrings: ["iPhone7,1"], osVersions: [8, 9])
let iPhone6s        = (modelName: "iPhone 6s", modelNumbers: ["A1633", "A1688"], hardwareStrings: ["iPhone8,1"], osVersions: [9])
let iPhone6sPlus    = (modelName: "iPhone 6s Plus", modelNumbers: ["A1634", "A1687"], hardwareStrings: ["iPhone8,2"], osVersions: [9])

let phones = [iPhone, iPhone3G, iPhone3Gs, iPhone4, iPhone4s, iPhone5, iPhone5c, iPhone5s, iPhone6, iPhone6Plus, iPhone6s, iPhone6sPlus]

var indx = 1

//given an index, print the model name
print(phones[indx].modelName)

enum ModelName: String {
    case i = "iPhone"
    case i3g = "iPhone 3G"
    case i3gs = "iPhone 3Gs"
    case i4 = "iPhone 4"
    case i4s = "iPhone 4S"
    case i5 = "iPhone 5"
    case i5c = "iPhone 5c"
    case i5s = "iPhone 5s"
    case i6 = "iPhone 6"
    case i6p = "iPhone 6 Plus"
    case i6s = "iPhone 6s"
    case i6sp = "iPhone 6s Plus"
}

enum ModelNumber: String {
    case A1203 = "A1203",
    A1324 = "A1324",
    A1241 = "A1241",
    A1325 = "A1325",
    A1303 = "A1303",
    A1349 = "A1349",
    A1332 = "A1332",
    A1431 = "A1431",
    A1387 = "A1387",
    A1428 = "A1428",
    A1429 = "A1429",
    A1442 = "A1442",
    A1532 = "A1532",
    A1456 = "A1456",
    A1507 = "A1507",
    A1529 = "A1529",
    A1533 = "A1533",
    A1453 = "A1453",
    A1457 = "A1457",
    A1530 = "A1530",
    A1549 = "A1549",
    A1586 = "A1586",
    A1522 = "A1522",
    A1524 = "A1524",
    A1633 = "A1633",
    A1688 = "A1688",
    A1634 = "A1634",
    A1687 = "A1687"
}

enum HardwareString: String {
    case i11 = "iPhone1,1"
    case i12 = "iPhone1,2"
    case i21 = "iPhone2,1"
    case i31 = "iPhone3,1"
    case i32 = "iPhone 3,2"
    case i33 = "iPhone 3,3"
    case i41 = "iPhone 4,1"
    case i51 = "iPhone 5,1"
    case i52 = "iPhone 5,2"
    case i53 = "iPhone 5,3"
    case i54 = "iPhone 5,4"
    case i61 = "iPhone 6,1"
    case i62 = "iPhone 6,2"
    case i71 = "iPhone 7,1"
    case i72 = "iPhone 7,2"
    case i81 = "iPhone 8,1"
    case i82 = "iPhone 8,2"

}

enum OSVersion: Int {
    case one = 1,
    two, three, four, five, six, seven, eight, nine
}

var test = ("", "", "", 0)

test = ("iphone 6", "", "", 0)

test = ("iPhone 6s", "A1633", "iPhone8,1", 9)


//create a device passing in as arguments each enum

func createPhone(model: ModelName, num: ModelNumber, hardware: HardwareString, version: OSVersion) -> (String, Int, String, Int) {
    //statements here
    var myPhone = (model.rawValue, num.hashValue, hardware.rawValue, version.rawValue)
    return myPhone
    
}

//createPhone(test)

//Have user enter either a Model Name, Model Number, Hardware String or OSVersion to search for
//Have user choose specific description of model Name, Model Number, Hardware String or OSVersion that they need
//check to see if user entered 1 of 4 options of Model Name, Model Number, Hardware String or OSVersion, if not, message 'Not searchable' if pass, move on to next step.
//check to see if user entered appropriate description: use 1 of 4 selections to search different enums for the description. If not, 'no such..' If pass, move on to next step.
//use valid description to search through array of tuples and match on device, return device name

//instantiate empty variables to accept user input later
var modelName = ""
var modelNumber = ""
var hardware = ""
var osVersion = 0
var device: (String)

//user inputs
modelName = "iPhone"
modelNumber = "A1241"
hardware = "iPhone 8,1"
osVersion = 5

//get a device with a model name
func getDeviceWithModelName (test5: String) -> String {
    switch test5 {
    case ModelName.i.rawValue:
        device = ("iPhone")
    case ModelName.i3g.rawValue:
        device = ("iPhone 3G")
    case ModelName.i3gs.rawValue:
        device = ("iPhone 3Gs")
    case ModelName.i4.rawValue:
        device = ("iPhone 4")
    case ModelName.i4s.rawValue:
        device = ("iPhone 4s")
    case ModelName.i5.rawValue:
        device = ("iPhone 5")
    case ModelName.i5c.rawValue:
        device = ("iPhone 5c")
    case ModelName.i5s.rawValue:
        device = ("iPhone 5s")
    case ModelName.i6.rawValue:
        device = ("iPhone 6")
    case ModelName.i6p.rawValue:
        device = ("iPhone 6 Plus")
    case ModelName.i6s.rawValue:
        device = ("iPhone 6s")
    case ModelName.i6sp.rawValue:
        device = ("iPhone 6s Plus")
    
    default: device = ("There is no such Model Number.")
    
    return device
    }
}

getDeviceWithModelName(modelName)

//get device with a model number
switch modelNumber {
case ModelNumber.A1203.rawValue:
    device = ("iPhone")
case ModelNumber.A1324.rawValue, ModelNumber.A1241.rawValue:
    device = ("iPhone 3G")
case ModelNumber.A1325.rawValue, ModelNumber.A1303.rawValue:
    device = ("iPhone 3Gs")
case ModelNumber.A1349.rawValue, ModelNumber.A1332.rawValue:
    device = ("iPhone 4")
case ModelNumber.A1431.rawValue, ModelNumber.A1387.rawValue:
    device = ("iPhone 4s")
case ModelNumber.A1428.rawValue, ModelNumber.A1429.rawValue, ModelNumber.A1442.rawValue:
    device = ("iPhone 5")
case ModelNumber.A1532.rawValue, ModelNumber.A1456.rawValue, ModelNumber.A1507.rawValue, ModelNumber.A1529.rawValue:
    device = ("iPhone 5c")
case ModelNumber.A1533.rawValue, ModelNumber.A1453.rawValue, ModelNumber.A1457.rawValue, ModelNumber.A1530.rawValue:
    device = ("iPhone 5s")
case ModelNumber.A1549.rawValue, ModelNumber.A1586.rawValue:
    device = ("iPhone 6")
case ModelNumber.A1522.rawValue, ModelNumber.A1524.rawValue:
    device = ("iPhone 6 Plus")
case ModelNumber.A1633.rawValue, ModelNumber.A1688.rawValue:
    device = ("iPhone 6s")
case ModelNumber.A1634.rawValue, ModelNumber.A1687.rawValue:
    device = ("iPhone 6s Plus")
default: device = ("Not a valid model number.")
}

//get a device with a hardware string
switch hardware {
case HardwareString.i11.rawValue:
    device = ("iPhone")
case HardwareString.i12.rawValue:
    device = ("iPhone 3G")
case HardwareString.i21.rawValue:
    device = ("iPhone 3Gs")
case HardwareString.i31.rawValue, HardwareString.i32.rawValue, HardwareString.i33.rawValue:
    device = ("iPhone 4")
case HardwareString.i41.rawValue:
    device = ("iPhone 4s")
case HardwareString.i51.rawValue, HardwareString.i52.rawValue:
    device = ("iPhone 5")
case HardwareString.i53.rawValue, HardwareString.i54.rawValue:
    device = ("iPhone 5c")
case HardwareString.i61.rawValue, HardwareString.i62.rawValue:
    device = ("iPhone 5s")
case HardwareString.i71.rawValue:
    device = ("iPhone 6")
case HardwareString.i72.rawValue:
    device = ("iPhone 6 Plus")
case HardwareString.i81.rawValue:
    device = ("iPhone 6s")
case HardwareString.i82.rawValue:
    device = ("iPhone 6s Plus")

default: device = ("Not a valid hardware string.")
}

//get devices with os version
switch osVersion {
case OSVersion.one.rawValue:
    device = ("iPhone")
case OSVersion.two.rawValue:
    device = ("iPhone, iPhone 3G")
case OSVersion.three.rawValue:
    device = ("iPhone, iPhone 3G, iPhone 3Gs")
case OSVersion.four.rawValue:
    device = ("iPhone 3G, iPhone 3Gs, iPhone 4")
case OSVersion.five.rawValue:
    device = ("iPhone 3Gs, iPhone 4, iPhone 4s")
case OSVersion.six.rawValue:
    device = ("iPhone 3Gs, iPhone 4, iPhone 4s, iPhone 5")
case OSVersion.seven.rawValue:
    device = ("iPhone 4, iPhone 4s, iPhone 5, iPhone 5c, iPhone 5s")
case OSVersion.eight.rawValue:
    device = ("iPhone 4s, iPhone 5, iPhone 5c, iPhone 5s, iPhone 6, iPhone 6 Plus")
case OSVersion.nine.rawValue:
    device = ("iPhone 4s, iPhone 5, iPhone 5c, iPhone 5s, iPhone 6, iPhone 6 Plus, iPhone 6s, iPhone 6s Plus")
    
default: device = ("Not a valid OS version.")
}

//find the validated user input in the array of tuple 'phones'
//first step is find the user input somewhere in the array of tuples...
//if found, determine what index in the array it equates to...
//then, using the same index number, return the model name of the same index.

var success = false

//testing against all model numbers
for (a, _, c, d) in phones {
    if modelName == a {
            !success
        }
    
//    for i in b {
//        print(i)
//        if modelNumber == i {
//            !success
//            
//        }
//    }
    
    for i in c {
        print(i)
        if hardware == i {
            !success
        }
    }

    for i in d {
        print(i)
        if osVersion == i {
            !success
        }
    }
}



//the success inside the for loop isn't escaping
if success {
    print("success")
}



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
