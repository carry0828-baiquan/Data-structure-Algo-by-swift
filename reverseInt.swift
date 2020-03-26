//
//  reverseInt.swift
//  data structure & algo
//
//  Created by barry on 2020/3/26.
//  Copyright © 2020 barry. All rights reserved.
//
// --- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// --- Examples
//   reverseInt(15) === 51
//   reverseInt(981) === 189
//   reverseInt(500) === 5
//   reverseInt(-15) === -51
//   reverseInt(-90) === -9

import Foundation
func reversInt(_ x:Int) -> Int{
 
    let isNegative:Bool = x < 0
    let signed:Int = Int(x * (isNegative ? -1 : 1))
    guard let reversed = Int(String(Array(String(signed).reversed())))
    else {return 0}
    let judge:Int = reversed * (isNegative ? -1 : 1)
    
    return Int(judge)
    
}
