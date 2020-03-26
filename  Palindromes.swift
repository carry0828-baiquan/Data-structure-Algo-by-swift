//
//   Palindromes.swift
//  data structure & algo
//
//  Created by barry on 2020/3/26.
//  Copyright © 2020 barry. All rights reserved.
//
// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false
import Foundation
var str = "Hello, playground"
func pal(str:String) -> Bool{
    var reverseStr = " "
    for character in str {
        
        reverseStr = String(character) + reverseStr
        
    }
    print(reverseStr)
    if (reverseStr == str) {
        return true
    } else {
        return false
    }
}
