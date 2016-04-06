
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




//var dogToys: Set = [
//    "Red Guy", "Rubber Ball", "Chew Bone", "String"
//]
//
//var catToys: Set = [
//"Rubber Ball", "Cat Nip", "String", "Mousy"
//]

var activities = [
    1: "Sleeping",
    2: "Playing",
    3: "Eating",
    4: "Chasing",
    5: "Barking"]

//DogFoes.cat

var dogTwo = Dog(breed: "Dauchsund", color: "Gray")
dogTwo.name = "Kaycee"


var myDog = Dog(breed: "Dauchsund", color: "Black")
myDog.birthday = DateUtils.createDate(year: 2008, month: 11, day: 18)
myDog.name = "Frannie"


print("I love my \(myDog.color) \(myDog.breed), \(myDog.name!). She is \(myDog.age) years old.")

myDog.energy = 50
myDog.energy = 69

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
