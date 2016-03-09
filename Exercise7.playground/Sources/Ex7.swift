import Foundation

public let iPhone          = (modelName: "iPhone", modelNumbers: ["A1203"], hardwareStrings: ["iPhone1,1"], osVersions: [1, 2, 3])
public let iPhone3G        = (modelName: "iPhone 3G", modelNumbers: ["A1324", "A1241"], hardwareStrings: ["iPhone1,2"], osVersions: [2, 3, 4])
public let iPhone3Gs       = (modelName: "iPhone 3Gs", modelNumbers: ["A1325", "A1303"], hardwareStrings: ["iPhone2,1"], osVersions: [3, 4, 5, 6])
public let iPhone4         = (modelName: "iPhone 4", modelNumbers: ["A1349", "A1332"], hardwareStrings: ["iPhone3,1", "iPhone3,2", "iPhone3,3"], osVersions: [4, 5, 6, 7])
public let iPhone4s        = (modelName: "iPhone 4S", modelNumbers: ["A1431", "A1387"], hardwareStrings: ["iPhone4,1"], osVersions: [5, 6, 7, 8, 9])
public let iPhone5         = (modelName: "iPhone 5", modelNumbers: ["A1428", "A1429", "A1442"], hardwareStrings: ["iPhone5,1", "iPhone5,2"], osVersions: [6, 7, 8, 9])
public let iPhone5c        = (modelName: "iPhone 5c", modelNumbers: ["A1532", "A1456", "A1507", "A1529"], hardwareStrings: ["iPhone5,3", "iPhone5,4"], osVersions: [7, 8, 9])
public let iPhone5s        = (modelName: "iPhone 5s", modelNumbers: ["A1533", "A1453", "A1457", "A1530"], hardwareStrings: ["iPhone6,1", "iPhone6,2"], osVersions: [7, 8, 9])
public let iPhone6         = (modelName: "iPhone 6", modelNumbers: ["A1549", "A1586"], hardwareStrings: ["iPhone7,2"], osVersions: [8, 9])
public let iPhone6Plus     = (modelName: "iPhone 6 Plus", modelNumbers: ["A1522", "A1524"], hardwareStrings: ["iPhone7,1"], osVersions: [8, 9])
public let iPhone6s        = (modelName: "iPhone 6s", modelNumbers: ["A1633", "A1688"], hardwareStrings: ["iPhone8,1"], osVersions: [9])
public let iPhone6sPlus    = (modelName: "iPhone 6s Plus", modelNumbers: ["A1634", "A1687"], hardwareStrings: ["iPhone8,2"], osVersions: [9])

public let phones = [iPhone, iPhone3G, iPhone3Gs, iPhone4, iPhone4s, iPhone5, iPhone5c, iPhone5s, iPhone6, iPhone6Plus, iPhone6s, iPhone6sPlus]


public enum ModelName: String {
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

public enum ModelNumber: String {
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

public enum HardwareString: String {
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

public enum OSVersion: Int {
    case one = 1,
    two, three, four, five, six, seven, eight, nine
}

//get a device with a model name
public func getDeviceWithModelName (tryThis: ModelName.Type, myModel: String) -> (String, Bool) {
    
    switch myModel {
    case ModelName.i.rawValue:
        return ("You have device:\(iPhone.modelName)", true)
    case ModelName.i3g.rawValue:
        return ("You have device:\(iPhone3G.modelName)", true)
    case ModelName.i3gs.rawValue:
        return ("You have device:\(iPhone3Gs.modelName)", true)
    case ModelName.i4.rawValue:
        return ("You have device:\(iPhone4.modelName)", true)
    case ModelName.i4s.rawValue:
        return ("You have device:\(iPhone4s.modelName)", true)
    case ModelName.i5.rawValue:
        return ("You have device:\(iPhone5.modelName)", true)
    case ModelName.i5c.rawValue:
        return ("You have device:\(iPhone5c.modelName)", true)
    case ModelName.i5s.rawValue:
        return ("You have device:\(iPhone5s.modelName)", true)
    case ModelName.i6.rawValue:
        return ("You have device:\(iPhone6.modelName)", true)
    case ModelName.i6p.rawValue:
        return ("You have device:\(iPhone6Plus.modelName)", true)
    case ModelName.i6s.rawValue:
        return ("You have device:\(iPhone6s.modelName)", true)
    case ModelName.i6sp.rawValue:
        return ("You have device:\(iPhone6sPlus.modelName)", true)
        
    default: break
        
    }
    return("You don't have a valid device.", false)
}

//get device with a model number
public func getDeviceWithModelNumber (tryThis: ModelNumber.Type, myModelNumber: String) -> (String, Bool){

    switch myModelNumber {
    case ModelNumber.A1203.rawValue:
        return ("You have device:\(iPhone)", true)
    case ModelNumber.A1324.rawValue, ModelNumber.A1241.rawValue:
        return ("You have device:\(iPhone3G)", true)
    case ModelNumber.A1325.rawValue, ModelNumber.A1303.rawValue:
        return ("You have device:\(iPhone3Gs)", true)
    case ModelNumber.A1349.rawValue, ModelNumber.A1332.rawValue:
        return ("You have device:\(iPhone4)", true)
    case ModelNumber.A1431.rawValue, ModelNumber.A1387.rawValue:
        return ("You have device:\(iPhone4s)", true)
    case ModelNumber.A1428.rawValue, ModelNumber.A1429.rawValue, ModelNumber.A1442.rawValue:
        return ("You have device:\(iPhone5)", true)
    case ModelNumber.A1532.rawValue, ModelNumber.A1456.rawValue, ModelNumber.A1507.rawValue, ModelNumber.A1529.rawValue:
        return ("You have device:\(iPhone5c)", true)
    case ModelNumber.A1533.rawValue, ModelNumber.A1453.rawValue, ModelNumber.A1457.rawValue, ModelNumber.A1530.rawValue:
        return ("You have device:\(iPhone5s)", true)
    case ModelNumber.A1549.rawValue, ModelNumber.A1586.rawValue:
        return ("You have device:\(iPhone6)", true)
    case ModelNumber.A1522.rawValue, ModelNumber.A1524.rawValue:
        return ("You have device:\(iPhone6Plus)", true)
    case ModelNumber.A1633.rawValue, ModelNumber.A1688.rawValue:
        return ("You have device:\(iPhone6s)", true)
    case ModelNumber.A1634.rawValue, ModelNumber.A1687.rawValue:
        return ("You have device:\(iPhone6sPlus)", true)

    default: break
    }
    return("You don't have a valid device.", false)
}

//get a device with a hardware string
public func getDeviceWithHardwareString (tryThis: HardwareString.Type, myHardware: String) -> (String, Bool){

    switch myHardware {
    case HardwareString.i11.rawValue:
        return ("You have device:\(iPhone)", true)
    case HardwareString.i12.rawValue:
        return ("You have device:\(iPhone3G)", true)
    case HardwareString.i21.rawValue:
        return ("You have device:\(iPhone3Gs)", true)
    case HardwareString.i31.rawValue, HardwareString.i32.rawValue, HardwareString.i33.rawValue:
        return ("You have device:\(iPhone4)", true)
    case HardwareString.i41.rawValue:
        return ("You have device:\(iPhone4s)", true)
    case HardwareString.i51.rawValue, HardwareString.i52.rawValue:
        return ("You have device:\(iPhone5)", true)
    case HardwareString.i53.rawValue, HardwareString.i54.rawValue:
        return ("You have device:\(iPhone5c)", true)
    case HardwareString.i61.rawValue, HardwareString.i62.rawValue:
        return ("You have device:\(iPhone5s)", true)
    case HardwareString.i71.rawValue:
        return ("You have device:\(iPhone6)", true)
    case HardwareString.i72.rawValue:
        return ("You have device:\(iPhone6Plus)", true)
    case HardwareString.i81.rawValue:
        return ("You have device:\(iPhone6s)", true)
    case HardwareString.i82.rawValue:
        return ("You have device:\(iPhone6sPlus)", true)

    default: break
    }
    return("You do not have a valid device.", false)
}

//get devices with os version

public func getDeviceWithOSVersion (tryThis: OSVersion.Type, myOS: Int) -> (String, Bool){
switch myOS {
    case OSVersion.one.rawValue:
        return ("You have device:\(iPhone.modelName)", true)
    case OSVersion.two.rawValue:
        return ("You have one of these devices: \(iPhone.modelName), \(iPhone3G.modelName)", true)
    case OSVersion.three.rawValue:
        return ("You have one of these devices: \(iPhone.modelName), \(iPhone3G.modelName), \(iPhone3Gs.modelName)", true)
    case OSVersion.four.rawValue:
        return ("You have one of these devices: \(iPhone3G.modelName), \(iPhone3Gs.modelName), \(iPhone4.modelName)", true)
    case OSVersion.five.rawValue:
        return ("You have one of these devices: \(iPhone3Gs.modelName), \(iPhone4.modelName), \(iPhone4s.modelName)", true)
    case OSVersion.six.rawValue:
        return ("You have one of these devices: \(iPhone3Gs.modelName), \(iPhone4.modelName), \(iPhone4s.modelName), \(iPhone5.modelName)", true)
    case OSVersion.seven.rawValue:
        return ("You have one of these devices: \(iPhone3Gs.modelName), \(iPhone4.modelName), \(iPhone4s.modelName), \(iPhone5.modelName), \(iPhone5c.modelName), \(iPhone5s.modelName)", true)
    case OSVersion.eight.rawValue:
        return ("You have one of these devices: \(iPhone4s.modelName), \(iPhone5.modelName), \(iPhone5c.modelName), \(iPhone5s.modelName), \(iPhone6.modelName), \(iPhone6Plus.modelName)", true)
    case OSVersion.nine.rawValue:
        return ("You have one of these devices: \(iPhone4s.modelName), \(iPhone5.modelName), \(iPhone5c.modelName), \(iPhone5s.modelName), \(iPhone6.modelName), \(iPhone6Plus.modelName), \(iPhone6s.modelName), \(iPhone6sPlus.modelName)", true)

    default: break
}
    return("You do not have a valid device.", false)
}


