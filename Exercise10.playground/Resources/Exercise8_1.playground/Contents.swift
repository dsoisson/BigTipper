
import Foundation

/*:
**Exercise:** Create two classes `Dog` and `Cat`. Each will have properties of `breed`, `color`, `age` and `name`. They also have methods of `barking` (dog's) only, `meowing` (cats only), `eating`, `sleeping`, `playing`, and `chase`.
*/
/*:
**Constraints:** You must also have:
* Initializer & Deinitializer
* Computed Properties
* Property Observers
* Method body is up to you, but your method signatures need parameter(s)
*/
enum DogFoes {
    case cat
    case squirrel
    case intruder
}

enum MeowReasons {
    case wantsFood
    case wantsOutside
    case wantsInside
    case wantsAttention
    
}

class Dog {
    var breed: String = ""
    var color: String = ""
    var name: String? = ""
    var birthday: NSDate?
    var alive: Bool = true
    var eating: Bool = false
    var sleeping: Bool = false
    var playing: Bool = false
    var barking: Bool = false
    
    
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
    
    func bark(kind: DogFoes) -> (String, Bool) {
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
            bark(DogFoes.cat)
            energy -= 10
        }
        
        return ("I'm tired now", energy)
    }
    
    func chase() -> String{
        
        return "I'm gonna get that cat!!"
    }
    
    
    deinit {
        print("no more dog")
    }
}

class Cat{
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
    
    func meow(kind: MeowReasons) -> (String, Bool) {
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
    
    func eat(inout energy: Int) -> String {
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
    
    
    
    func sleep() -> String{
        
        return "Very sleepy.  Need to close eyes."
    }
    
    func play() -> (String, Int) {
        energy = 50
        while energy > 10 {
            chase()
            energy -= 5
        }
        
        return ("I'm tired now", energy)
    }
    
    func chase() -> String{
        
        return "I'm gonna get that dog!!"
    }
    
    
    deinit {
        print("no more cat")
    }
}

class Toy {
    var dogToy: Set = [
        "Red Guy", "Rubber Ball", "Chew Bone", "String"
    ]
    
    var catToy: Set = [
        "Rubber Ball", "Cat Nip", "String", "Mousy"
    ]
    
}


var activities = [
    1: "Sleeping",
    2: "Playing",
    3: "Eating",
    4: "Chasing",
    5: "Barking"
]


var myCat = Cat(breed: "Hemmingway", color: "Gray")
myCat.name = "Polly"
print("My cat \(myCat.name!) has five toes.")
myCat.energy = 90


var dogTwo = Dog(breed: "Dauchsund", color: "Gray")
dogTwo.name = "Kaycee"


var myDog = Dog(breed: "Dauchsund", color: "Black")
myDog.birthday = DateUtils.createDate(year: 2008, month: 11, day: 18)
myDog.name = "Frannie"


print("I love my \(myDog.color) \(myDog.breed), \(myDog.name!). She is \(myDog.age) years old.")

myDog.energy = 50


if myCat.energy < myDog.energy {
    myDog.chase()
} else {
    myCat.chase()
}

myDog.play()
print("Energy Level is \(myDog.energy)")

myDog.eat(&myDog.energy)
print("Energy Level is \(myDog.energy)")
print(myDog.bark(DogFoes.cat).1)

dogTwo.barking
myDog.barking

if dogTwo.barking {
activities[5]
} else {
    print("\(dogTwo.name!) is not barking.")
}


if myDog.barking {
    "Stop that incessant barking!"
    myDog.barking = false
}

if myDog.play().1 < 50 {
    var energyLevel = myDog.play().1
    myDog.eat(&energyLevel)
}
