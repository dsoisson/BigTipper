
import Foundation
/*:
 **Exercise:** Build upon your `Dog` and `Cat` classes in the previous exercise by applying the appropriate access control for each class/class member. Add a `Owner` class that contains a collection of `Dog` instances and `Cat` instances. Have your `Dog` and `Cat` hold the correct reference type to an `Owner` instance. The `Ower` property of the `Cat` instance reference optional. Provide a `subscript` to interact with your `Dog` and `Cat` instances.
 */
/*:
 **Constraints:**
 - Use `weak`
 - Use `unowned`
 - Use `subscript`
 - Create a `convenience` initializer for creating your `Dog` and `Cat` instance
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



class Owner {
    var name: String = ""
    var cats: Cat? //owners don't need cats.  This is optional.
    var dogs = [Dog]()
    
    init(name: String){
        self.name = name
        
    }
    
    
    

    
//    subscript(index: Int) -> String {
//        get {
//        
//            return self.dogs![index].name ?? "no dogs"
//        }
//        set(newValue) {
//            self.dogs![index].name = newValue
//        }
//    }
    
    
    deinit{
        print("No more owner.")
    }
}


class Dog {
    var breed: String = ""
    var color: String = ""
    var name: String = ""
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
    
    //all dogs must have owners. using unowned
    unowned var owner: Owner
    
    
    init(breed: String, color: String, name: String, owner: Owner) {
        self.breed = breed
        self.color = color
        self.name = name
        self.owner = owner
        self.owner.dogs.append(self)
    }
    
    convenience init(owner: Owner) {
        self.init(breed: "", color: "", name: "", owner: Owner.init(name: ""))
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
    var name: String = ""
    var birthday: NSDate?
    var alive: Bool = true
    var eating: Bool = false
    var sleeping: Bool = false
    var playing: Bool = false
    var meowing: Bool = false
    //cats don't need owners.  This is optional. using weak
    weak var owner: Owner?
    
    
    
    var age: Int {//read only computed property using birthday and current date
        
        guard birthday != nil && alive else{
            return 0
        }
        
        return DateUtils.yearSpan(birthday!, to: NSDate())
        
    }
    
    
    init(breed: String, color: String, name: String) {
        self.breed = breed
        self.color = color
        self.name = name
        
    }
    
    convenience init() {
        self.init(breed: "", color: "", name: "")
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



var tom = Owner(name: "Tom")
var man = Owner(name: "Duane")



/*When an instance of a dog or cat is created, it should be added to the array of Dog or array of Cat in the Owner Class
 */

//using convenience initializer for cat
var myCat = Cat()
myCat.breed = "Hemmingway"
myCat.color = "Gray"
myCat.owner = tom //add this instance of cat (myCat) to the array of Cats in the tom instance of Owner.
myCat.name = "Polly"

print("\(myCat.owner!.name) adopted a cat and named her \(myCat.name)")
tom.cats = myCat //why is this still nil?
tom.cats?.name


var myDog = Dog(breed: "Dauchsund", color: "Black", name: "Frannie", owner: man)
var dogTwo = Dog(breed: "Dauchshund", color: "Gray", name: "Kaycee", owner: man)

//using convenience initializer for dog
var dogThree = Dog(owner: man)


//dogThree.breed = "Basset Hound"
//dogThree.breed

man.dogs


//man.dogs?.append(myDog) //why is this still 'nil


var catTwo = Cat()

print(" \(myCat.name) has five toes.")


dogTwo.name = "KC"
dogTwo.breed = "Basset Hound"
dogTwo.color = "Brown"

//print("\(dogThree.breed)")

myDog.birthday = DateUtils.createDate(year: 2008, month: 11, day: 18)

print("\(myDog.owner.name) bought a \(myDog.color) \(myDog.breed) named \(myDog.name). She is \(myDog.age) years old.")



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
print(myDog.bark(DogFoes.cat).1)

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
