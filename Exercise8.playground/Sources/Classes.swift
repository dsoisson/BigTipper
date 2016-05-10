import Foundation

public class Test {
    func sleep() -> String {
        return "test"
    }
}


public class Dog {
    public var breed: String = ""
    public var color: String = ""
    public var name: String? = ""
    public var birthday: NSDate?
    public var alive: Bool = true
    public var eating: Bool = false
    public var sleeping: Bool = false
    public var playing: Bool = false
    public var barking: Bool = false
    
    
    public var age: Int {//read only computed property using birthday and current date
        
        guard birthday != nil && alive else{
            return 0
        }
        
        return DateUtils.yearSpan(birthday!, to: NSDate())
        
    }
    
    
    public init(breed: String, color: String) {
        self.breed = breed
        self.color = color
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
        
        return "I'm gonna get you!!"
    }
    
    
    deinit {
        print("no more dog")
    }
}

public class Cat{
    var breed: String = ""
    var color: String = ""
    var name: String? = ""
    var birthday: NSDate?
    var alive: Bool = true
    var eating: Bool = false
    var sleeping: Bool = false
    var playing: Bool = false
    var meowing: Bool = false
    
    
    var age: Int {//read only computed property using birthday and current date
        
        guard birthday != nil && alive else{
            return 0
        }
        
        return DateUtils.yearSpan(birthday!, to: NSDate())
        
    }
    
    
    init(breed: String, color: String) {
        self.breed = breed
        self.color = color
    }
    
    
    var energy: Int = 100 {
        
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
    
    func meow(kind: DogFoes) -> (String, Bool) {
        meowing = true
        switch kind {
        case .cat:
            return ("Bark, Bark, Bark", false)
        case .squirrel:
            return ("arf", false)
        case .intruder:
            return ("grrrr", false)
        }
        
    }
    
    func eat(inout energy: Int) -> String {
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
    
    
    
    func sleep() -> String{
        
        return "Very sleepy.  Need to close eyes."
    }
    
    func play() -> (String, Int) {
        energy = 50
        while energy > 10 {
            chase()
            energy -= 5
//            bark(DogFoes.cat)
            energy -= 10
        }
        
        return ("I'm tired now", energy)
    }
    
    func chase() -> String{
        
        return "I'm gonna get you!!"
    }
    
    
    deinit {
        print("no more dog")
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