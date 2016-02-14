
/*:
**Exercise:** You have to record all the students and their grades for your school. Leveraging arrays, dictionaries, and sets create table like containers for each class. Your classes are Math, Science, English and History with a total of 17 unique students. Print out each class roster and use and experiment with set operations and set membership and equality.
>> **Example Output:**
* `Math = Mathew Sheets, John Winters, Sam Smith`
* `Science = Sam Smith, Carson Daily, Adam Aarons`
* `Union of Math and Science = Mathew Sheets, John Winters, Sam Smith, Carson Daily, Adam Aarons`
>> **Constraints:**
* Use Set Operations
* intersect
* exclusiveOr
* union
* subtract
* Use Set Membership and Equality
* is equal
* isSubsetOf
* isSupersetOf
* isStrictSubsetOf
* isStrictSupersetOf
* isDisjointWith
*/

import Foundation

var classes: Set<String> = ("Math", "Science", "English", "History")

