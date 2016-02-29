import Foundation

//var allNames: String = ""
//var counter: Int
//
//public func firstNames(arrayName: Array<String>) -> (String) {
//    for index in arrayName {
//        counter = counter + 1
//        Print(counter)
//        print(index)
//        arrayName[index]
//    }
//    
//}

public func intro(students: [[String]]) -> String {
    var myName = ""
    myName = "My name is \(students[0][0]), my email is \(students[0][2])"
    return myName
}

public func otherStudents(students: [[String]]) -> String {
    var names = ""
    for student in students {
        names += student[0]+", "
    }
    
return "the other students are \(names)"
}

public func dropStudent(var students: [[String]], student: String) -> (String, [[String]]) {
    var studentFound = false
    var index = 0
    var notice = ""
    for name in students[students.indices]{
        index++
        if name.first! == student {
            studentFound = !studentFound
    
        }
    }
    
    if studentFound {
        notice = ("\(student) was found in this class and will be dropped.")
        students = [students.removeAtIndex(index-1)]
        
    } else {
        notice = ("\(student) is not in this class and cannot be dropped.")
    }

    return (notice, students)
}