//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let array = [1,2,3,4,5,6,7]


func binarySearch<T:Comparable> (_ a: [T], key : T, range: Range<Int>) -> Int? {
    
    if(range.lowerBound >= range.upperBound){
        return nil
    }
    
    else {
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        if a[midIndex] > key {
            return binarySearch(a, key: key, range: range.lowerBound ..< midIndex)
        }
        
        else if a[midIndex] < key {
            return binarySearch(a, key: key, range: midIndex + 1 ..< range.upperBound)
        }
        
        else{
            return midIndex
        }
        
    }
    
}

binarySearch(array, key: 2, range: 0 ..< array.count)


func binaryWithArray<T:Comparable> (_ a: [T], key: T) -> Int? {
    
    var lowerBond = 0
    var upperBond = a.count
    
    while lowerBond > upperBond {
        let midIndex = lowerBond + (upperBond - lowerBond) / 2
        if a[midIndex] == key {
            return midIndex
        }
        else if a[midIndex] < key {
            lowerBond = midIndex + 1
        }else {
            upperBond = midIndex
        }
    }
    return nil
    
}
