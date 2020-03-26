//
//  capitalize.swift
//  data structure & algo
//
//  Created by barry on 2020/3/26.
//  Copyright © 2020 barry. All rights reserved.
//
// --- Directions
// Write a function that accepts a string.  The function should
// capitalize the first letter of each word in the string then
// return the capitalized string.
// --- Examples
//   capitalize('a short sentence') --> 'A Short Sentence'
//   capitalize('a lazy fox') --> 'A Lazy Fox'
//   capitalize('look, it is working!') --> 'Look, It Is Working!'

import Foundation
func capitalize(str:String) -> String {
    var empty = [String]()
    for word in str.split(separator: " ") {
        empty.append(word[word.startIndex].uppercased() + word[word.index(after: word.startIndex)...])
    }
    return empty.joined(separator: " ")
}
