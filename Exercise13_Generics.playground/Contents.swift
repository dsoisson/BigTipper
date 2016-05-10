/*:
 * callout(Exercise): Leveraging the `each` and `iterator` functions above, and using the students constant below, create the following functions passing in a closure to satisfy the function requirement.
 */

/*: 
 * callout(Exercise): Based on session [More Functions](More%20Functions) and Exercise 6, create a container that can store any type but provide methods to add/remove and query for instances of any type. Leverage the functions you created in Exercise 6, but create them as generic methods.
*/

/*:
**Constraints:**
- Create a protocol for your container to conform to
- Create a generic container to store any type
- Add methods to add/remove instances
- Add the follow methods for querying
    - `each` = Iterate over each element in the array
- `all` = Returns true if all of the elements is not false
- `any` = Returns true if at least one of the elements is not false
- `contains` = Returns true if the element is present
- `indexOf` = Returns the index at which element can be found
- `filter` = Returns an array of all the elements that pass a truth test
- `reject` = Returns the elements in the array without the elements that pass a truth test
- `pluck` = Returns an array of a specific value from all the elements
*/

let students = [
    ["first" : "Obi-Wan",   "last" : "Kenobi",      "age" : "55", "class" : "Math"],
    ["first" : "Darth",     "last" : "Vader",		"age" : "76", "class" : "English"],
    ["first" : "Anakin",    "last" : "Skywalker",	"age" : "17", "class" : "History"],
    ["first" : "Darth",     "last" : "Sidious",		"age" : "88", "class" : "Science"],
    ["first" : "Padme",     "last" : "Amidala",		"age" : "25", "class" : "Math"],
    ["first" : "Mace",      "last" : "Windu",		"age" : "56", "class" : "Science"],
    ["first" : "Count",     "last" : "Dooku",		"age" : "67", "class" : "History"],
    ["first" : "Luke",      "last" : "Skywalker",	"age" : "21", "class" : "Math"],
    ["first" : "Han",       "last" : "Solo",		"age" : "35", "class" : "Science"],
    ["first" : "Leia",      "last" : "Organa",		"age" : "21", "class" : "English"],
    ["first" : "Chew",      "last" : "Bacca",		"age" : "33", "class" : "Science"],
    ["first" : "Boba",      "last" : "Fett",		"age" : "32", "class" : "History"],
    ["first" : "Lando",     "last" : "Calrissian",	"age" : "55", "class" : "English"],
    ["first" : "Kylo",      "last" : "Ren",			"age" : "21", "class" : "Math"],
    ["first" : "Poe",       "last" : "Dameron",		"age" : "25", "class" : "History"],
    ["first" : "Finn",      "last" : "FN-2187",		"age" : "23", "class" : "Science"],
    ["first" : "Rey",       "last" : "Rey",			"age" : "16", "class" : "English"]
]

let jerseyNumbers = [4, 6, 10, 81, 32]
let teamNames = ["Steelers", "Penguins", "Pirates", "Reds", "Bengals", "Indians", "Browns"]

each(jerseyNumbers){ print("\($0) is at index \($1)")}
print("all = \(all(jerseyNumbers){$0 > 8})")
print("any = \(any(jerseyNumbers){$0 > 8})")
print("indexOf = \(jerseyNumbers[indexOf(jerseyNumbers){$0 == 10}!])")
indexOf(jerseyNumbers, closure: {$0 == 10})!
print("contains = \(contains(jerseyNumbers, closure: {$0 == 3}))")
print("filter: \(filter(jerseyNumbers, closure: {$0 == 10})!)")
print("reject: \(reject(jerseyNumbers){$0 == 10}!)")
//print("pluck: \(pluck(jerseyNumbers){$0}!)")

each(teamNames){print("\($0) is at index \($1)")}
print("all = \(all(teamNames){$0 == "Pirates"})")
print("any = \(any(teamNames){$0 == "Pirates"})")
print("indexOf = \(teamNames[indexOf(teamNames){$0 == "Pirates"}!])")
indexOf(teamNames, closure: {$0 == "Pirates"})!
print("contains = \(contains(teamNames, closure: {$0 == "Steelers"}))")
print("filter: \(filter(teamNames, closure: {$0 == "Indians"})!)")
print("reject: \(reject(teamNames){$0 == "Browns"}!)")

each(students) { print("\($0["first"]!) \($0["last"]!) is index \($1)") }
print("all = \(all(students) { Int($0["age"]!) < 88 })")
print("any = \(any(students) { Int($0["age"]!) <= 16 })")
print("indexOf = \(students[indexOf(students) { $0["last"] == "Sidious" }!]["first"]!)")
print("contains = \(contains(students) { $0["first"] == "Chew" })")
print("filter: \n\t\(filter(students) { $0["class"]! == "English" }!)")
print("reject: \n\t\(reject(students) { Int($0["age"]!) >= 21 }!)")
//print("pluck: \n\t\(pluck(students) { $0["age"]! }.sort())")
//print("pluck: \n\t\(pluck(students) { $0["last"]! })")

let text = "Last names of math and science students where age > 25 and age < 80"
//let selected = pluck(filter(filter(students) { $0["class"] == "Math" }! + filter(students) { $0["class"] == "Science" }!) { Int($0["age"]!)! > 25 && Int($0["age"]!)! < 80 }!) { $0["last"]! }

//print("\(text)\n\t\(selected)")

