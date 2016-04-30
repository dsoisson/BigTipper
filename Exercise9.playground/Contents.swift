
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

var activities = [
    1: "Sleeping",
    2: "Playing",
    3: "Eating",
    4: "Chasing",
    5: "Barking"
]


var tom: Owner? = Owner(name: "Tom")
var man = Owner(name: "Duane")

tom![MeowReasons.wantsFood]

/*When an instance of a dog or cat is created, it should be added to the array of Dog or array of Cat in the Owner Class
 */

//using convenience initializer for cat
var myCat = Cat()
myCat.breed = "Hemmingway"
myCat.color = "Gray"
myCat.owner = tom //add this instance of cat (myCat) to the array of Cats in the tom instance of Owner.
myCat.name = "Polly"

print("\(myCat.owner!) adopted a cat and named her \(myCat.name)")
tom

myCat.meow(MeowReasons.wantsFood)

var myDog = Dog(breed: "Dauchsund", color: "Black", name: "Frannie", owner: tom!)
var dogTwo = Dog(breed: "Dauchshund", color: "Gray", name: "Kaycee", owner: man)

//using convenience initializer for dog
//var dogThree = Dog(owner: man)
//
//
//dogThree.breed = "Basset Hound"
//dogThree.breed
//


var catTwo = Cat()

print(" \(myCat.name) has five toes.")


dogTwo.name = "KC"
dogTwo.breed = "Basset Hound"
dogTwo.color = "Brown"

//print("\(dogThree.breed)")

//myDog.birthday = DateUtils.createDate(year: 2008, month: 11, day: 18)

print("\(myDog.owner) bought a \(myDog.color) \(myDog.breed) named \(myDog.name). ")



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

tom?.cats
tom?.dogs

tom = nil
