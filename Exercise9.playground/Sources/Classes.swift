import Foundation

public class Owner {
    public var name: String = ""
    public var cats = [Cat]()
    public var dogs = [Dog]()
    public init(name: String){
        self.name = name
    }
    
    public subscript(index: MeowReasons) -> String{
        switch index {
        case .wantsFood:
            return "Bowl was filled."
        case .wantsAttention:
            return "Fur was brushed."
        case .wantsInside:
            return "Door opened to let inside."
        case .wantsOutside:
            return "Door opened to let outside."
        }
        
    }
    
    deinit{
        print("No more owner.")
    }
}

public class Dog {
    public var breed: String = ""
    public var color: String = ""
    public var name: String = ""
    public var birthday: NSDate?
    public var alive: Bool = true
    public var eating: Bool = false
    public var sleeping: Bool = false
    public var playing: Bool = false
    public var barking: Bool = false
    
    
//    var age: Int {//read only computed property using birthday and current date
//        
//        guard birthday != nil && alive else{
//            return 0
//        }
//        
//        return DateUtils.yearSpan(birthday!, to: NSDate())
//        
//    }
    
    //all dogs must have owners. using unowned
    public unowned var owner: Owner
    
    
    public init(breed: String, color: String, name: String, owner: Owner) {
        self.breed = breed
        self.color = color
        self.name = name
        self.owner = owner
        self.owner.dogs.append(self)
    }
    
    public convenience init(owner: Owner) {
        self.init(breed: "", color: "", name: "", owner: Owner.init(name: ""))
    }
    
    
    public var energy: Int = 100 {
        
        willSet {
            print("About to set energy to \(newValue)%")
        }
        didSet {
            print("You had \(oldValue)% energy, now you have \(energy)%")
            
            if energy <= 0  {
                
                print("Too tired.  Time to rest.")
            }
        }
    }
    
    public func bark(kind: DogFoes) -> (String, Bool) {
        barking = true
        switch kind {
        case .cat:
            return ("Bark, Bark, Bark", barking)
        case .squirrel:
            return ("arf", barking)
        case .intruder:
            return ("grrrr", barking)
        }
        
    }
    
    public func eat(inout energy: Int) -> String {
        switch energy{
        case 0..<25:
            energy = 100
            return "Really hungry.  Ate 4 cups of food."
        case 25..<75:
            energy = 100
            return "Sort of hungry. Ate 2 cups of food."
        case 75..<100:
            energy = 100
            return "Not very hungry but ate anyway."
        default:
            sleep()
            return "Feeling stuffed.  Didn't eat."
        }
    }
    
    
    
    public func sleep() -> String{
        
        return "Very sleepy.  Need to close eyes."
    }
    
    public func play() -> (String, Int) {
        energy = 50
        while energy > 10 {
            chase()
            energy -= 5
            bark(DogFoes.cat)
            energy -= 10
        }
        
        return ("I'm tired now", energy)
    }
    
    public func chase() -> String{
        
        return "I'm gonna get that cat!!"
    }
    
    
    deinit {
        print("no more dog")
    }
}

public class Cat{
    public var breed: String = ""
    public var color: String = ""
    public var name: String = ""
//    var birthday: NSDate?
    public var alive: Bool = true
    public var eating: Bool = false
    public var sleeping: Bool = false
    public var playing: Bool = false
    public var meowing: Bool = false
    //cats don't need owners.  This is optional. using weak
    public weak var owner: Owner?
    
    
    
//    var age: Int {//read only computed property using birthday and current date
//        
//        guard birthday != nil && alive else{
//            return 0
//        }
//        
//        return DateUtils.yearSpan(birthday!, to: NSDate())
//        
//    }
    
    
    public init(breed: String, color: String, name: String) {
        self.breed = breed
        self.color = color
        self.name = name
        
    }
    
    public convenience init() {
        self.init(breed: "", color: "", name: "")
    }
    
    //    if let owner
    
    public var energy: Int = 100 {
        
        willSet {
            print("About to set energy to \(newValue)%")
        }
        didSet {
            print("You had \(oldValue)% energy, now you have \(energy)%")
            
            if energy <= 0  {
                
                print("Too tired.  Time to rest.")
            }
        }
    }
    
    public func meow(kind: MeowReasons) -> (String, Bool) {
        meowing = true
        switch kind {
        case .wantsAttention:
            return ("MEOW!", meowing)
        case .wantsFood:
            return ("meow", meowing)
        case .wantsInside:
            return ("Meow", meowing)
        case .wantsOutside:
            return ("meOWt", meowing)
        }
        
    }
    
    public func eat(inout energy: Int) -> String {
        switch energy{
        case 0..<25:
            energy = 100
            return "Really hungry.  Ate the entire can."
        case 25..<75:
            energy = 100
            return "Sort of hungry. Ate half the can."
        case 75..<100:
            energy = 100
            return "Not very hungry. Ate only one bite."
        default:
            sleep()
            return "Feeling stuffed.  Didn't eat."
        }
    }
    
    
    
    public func sleep() -> String{
        
        return "Very sleepy.  Need to close eyes."
    }
    
    public func play() -> (String, Int) {
        energy = 50
        while energy > 10 {
            chase()
            energy -= 5
        }
        
        return ("I'm tired now", energy)
    }
    
    public func chase() -> String{
        
        return "I'm gonna get that dog!!"
    }
    
    
    deinit {
        print("no more cat")
    }
}


public class Toy {
    public var dogToy: Set = [
        "Red Guy", "Rubber Ball", "Chew Bone", "String"
    ]
    
    public var catToy: Set = [
        "Rubber Ball", "Cat Nip", "String", "Mousy"
    ]
    
}

