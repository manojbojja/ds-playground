//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func linearSearch<T: Equatable> (_ array: [T], _ object: T) -> Int? {
    
    for (index, obj) in array.enumerated() where obj == object {
        return index
    }
    
    return nil
    
}


let sarray = ["manoj","bojja","some","one"]

linearSearch(sarray, "bojja")



