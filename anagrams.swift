//
//  anagrams.swift
//  data structure & algo
//
//  Created by barry on 2020/3/26.
//  Copyright © 2020 barry. All rights reserved.
//
// --- Directions
// Check to see if two provided strings are anagrams of eachother.
// One string is an anagram of another if it uses the same characters
// in the same quantity. Only consider characters, not spaces
// or punctuation.  Consider capital letters to be the same as lower case
// --- Examples
//   anagrams('rail safety', 'fairy tales') --> True
//   anagrams('RAIL! SAFETY!', 'fairy tales') --> True
//   anagrams('Hi there', 'Bye there') --> False

import Foundation
func isAnagram(_ s: String, _ t: String) -> Bool {
    //don"t know how to replace characters such as "!","@"... in swift
    guard s.count == t.count else { return false }
    var table: [Character: Int] = [:]
    for ch in s {
        table[ch, default: 0] += 1
    }
    for ch in t {
        table[ch, default: 0] -= 1
    }
    for value in table.values {
        if value != 0 {
            return false
        }
    }
    return true
}
