//: Playground - noun: a place where people can play

import Foundation

func operation(num: Int) -> ((Int) -> Int)? {
    
    func single(num: Int) -> Int { return num * 1 }
    
    func double(num: Int) -> Int { return num * 2 }
    
    func triple(num: Int) -> Int { return num * 3 }
    
    func quadruple(num: Int) -> Int { return num * 4 }
    
    switch num {
        
    case 1: return single
        
    case 2: return double
        
    case 3: return triple
        
    case 4: return quadruple
        
    default: return nil
        
    }
    
}
operation(4)


//let c = operation(3)!(4) - operation(1)!(3)

//enum Bill : Int {
//    
//    case One = 1
//    
//    case Five
//    
//    case Ten = 10
//    
//    case Twenty
//    
//    case Fifty
//    
//    case Hundred
//    
//}
//
//print(Bill(rawValue: 20)!)


