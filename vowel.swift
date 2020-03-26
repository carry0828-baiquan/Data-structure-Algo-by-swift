//
//  vowel.swift
//  data structure & algo
//
//  Created by barry on 2020/3/26.
//  Copyright © 2020 barry. All rights reserved.
//
// --- Directions
// Write a function that returns the number of vowels
// used in a string.  Vowels are the characters 'a', 'e'
// 'i', 'o', and 'u'.
// --- Examples
//   vowels('Hi There!') --> 3
//   vowels('Why do you ask?') --> 4
//   vowels('Why?') --> 0
import Foundation
//solution 1
func vowels(str:String) -> Int{
    var count:Int = 0
    for char in str.lowercased() {
        if char == "a" || char == "e" || char == "i" || char == "o" || char == "u" {
            count += 1
        }
    }
    return count
}

//Solution2
func Vowels(str:String) -> Int {
    var count:Int = 0
    let set = ["a","e","i","o","u"]
    for char in str {
        for letter in set {
            if char.lowercased().contains(letter) {
                count += 1
            }
        }
    }
    return count
}
