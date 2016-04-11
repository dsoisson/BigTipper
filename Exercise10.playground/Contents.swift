
import Foundation
/*:
 **Exercise:**
 Build upon your `Dog` and `Cat` classes in the previous exercise by applying inheritance. Create a superclass that both `Dog` and `Cat` can inherit from. Modify your `Owner` class to hold a collection of pets. Iterate over your pets and print what sound the pet makes.
 */
/*:
 **Constraints:**
 - Create a new class as the superclass to `Dog` and `Cat`
 - The superclass needs to have a method of `makeSound()`
 - The subclasses need to override the `makeSound()` method and print the appropriate sound
 - The `pets` property needs to store both `Dog` and `Cat` instances
 */


enum DogFoes {
    case Cat, Squirrel, Intruder
}

enum DogSounds: Int {
    case Grrr = 1, Bark, Arf
 }

DogSounds(rawValue: 1)

enum CatSounds: Int {
    case Meow = 1, Meowt, Purr
}

enum MeowReasons {
    case wantsFood, wantsOutside, wantsAttention
}

class Pet {
    var breed: String = ""
    var color: String = ""
    var name: String = ""
    var birthday: NSDate?
    var alive: Bool = true
    var eating: Bool = false
    var sleeping: Bool = false
    var playing: Bool = false
    
    init(breed: String, color: String, name: String){
        self.breed = breed
        self.color = color
        self.name = name
    }
    
    convenience init() {
        self.init(breed: "", color: "", name: "")
        
    }
    
    
    
    var age: Int {//read only computed property using birthday and current date
        
        guard birthday != nil && alive else{
            return 0
        }
        
        return DateUtils.yearSpan(birthday!, to: NSDate())
        
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
    
    func makeSound(index: Int) -> String {
        return("")
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

    
}

class Owner {
    var name: String = ""
    var cats = [Cat]()
    var dogs = [Dog]()
    var pets = [Pet]()
    init(name: String){
        self.name = name
    }
    
    subscript(index: MeowReasons) -> String{
        switch index {
        case .wantsFood:
            return "Bowl was filled."
        case .wantsAttention:
            return "Fur was brushed."
        case .wantsOutside:
            return "Door opened to let outside."
        }
        
    }
    
    deinit{
        print("No more owner.")
    }
}


class Dog: Pet {
    var barking: Bool = false
    
    //all dogs must have owners. using unowned
    unowned var owner: Owner
    
    init(breed: String, color: String, name: String, owner: Owner) {
        self.owner = owner
        super.init(breed: breed, color: color, name: name)
        self.owner.pets.append(self)
    }
    
    convenience init() {
        self.init(breed: "", color: "", name: "", owner: Owner.init(name: ""))
    }

    override func makeSound(index: Int) -> String {
        return ("\(DogSounds(rawValue: index)!)")
    }
    
    func play() -> (String, Int) {
        energy = 50
        while energy > 10 {
            chase()
            energy -= 5
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

class Cat: Pet{
    var meowing: Bool = false
    //cats don't need owners.  This is optional. using weak
    weak var owner: Owner?

    init(breed: String, color: String, name: String, owner: Owner) {
        self.owner = owner
        super.init(breed: breed, color: color, name: name)
        self.owner?.pets.append(self)
    }

    
    override init(breed: String, color: String, name: String) {
        super.init(breed: breed, color: color, name: name)
}
    
    convenience init() {
        self.init(breed: "", color: "", name: "")
    }
    
    
    override func makeSound(index: Int) -> String {
        return ("\(CatSounds(rawValue: index)!)")
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



var tom = Owner(name: "Tom")
var man = Owner(name: "Duane")

tom[MeowReasons.wantsFood]

//using convenience initializer for cat
var myCat = Cat()
myCat.breed = "Hemmingway"
myCat.color = "Gray"
myCat.owner = man
myCat.name = "Polly"

print("\(myCat.owner!.name) adopted a cat and named her \(myCat.name)")
man.pets.append(myCat)
myCat.makeSound(3)

var myDog = Dog(breed: "Dauchsund", color: "Black", name: "Frannie", owner: man)
var dogTwo = Dog(breed: "Dauchshund", color: "Gray", name: "Kaycee", owner: man)
var catTwo = Cat()

//using convenience initializer for dog
//var dogThree = Dog()
//dogThree.breed = "Basset Hound"





for name in 0...man.pets.count-1 {
    print("My pet, \(man.pets[name].name), makes a sound like \(man.pets[name].makeSound(1))")
    
}


myDog.makeSound(1)

print(" \(myCat.name) has five toes.")

man.pets[0].name

dogTwo.name = "KC"
dogTwo.breed = "Basset Hound"
dogTwo.color = "Brown"

//print("\(dogThree.breed)")

myDog.birthday = DateUtils.createDate(year: 2008, month: 11, day: 18)

print("\(myDog.owner.name) bought a \(myDog.color) \(myDog.breed) named \(myDog.name). She is \(myDog.age) years old.")


//print out names and sounds of pets


myDog.energy = 50
myCat.energy = 45

if myCat.energy < myDog.energy {
    myDog.chase()
} else {
    myCat.chase()
}

myDog.play()
print("Energy Level is \(myDog.energy)")

myDog.eat(&myDog.energy)
print("Energy Level is \(myDog.energy)")
//print(myDog.bark(DogFoes.cat).1)

dogTwo.barking
myDog.barking

if dogTwo.barking {
activities[5]
} else {
    print("\(dogTwo.name) the \(dogTwo.breed) is not barking.")
}


if myDog.barking {
    "Stop that incessant barking!"
    myDog.barking = false
}

if myDog.play().1 < 50 {
    var energyLevel = myDog.play().1
    myDog.eat(&energyLevel)
}
