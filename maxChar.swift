//
//  maxChar.swift
//  data structure & algo
//
//  Created by barry on 2020/3/26.
//  Copyright © 2020 barry. All rights reserved.
//
// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

import Foundation
func maxChar(str:String){
    var charmap = [Character:Int]()
    var max:Int = 0
    var charmax:Character = "0"
    str.forEach { (char) in
        if (charmap[char] != nil) {
            charmap[char]! += 1
        }else{
            charmap[char] = 1
        }
    }
    charmap.forEach { (arg0) in
        let (char, val) = arg0
        if charmap[char]! > max {
            max = val
            charmax = char
        }
    }
   print("The char which appeared most often is " + "\(charmax)")
    print("It appeared \(max) times")
}
