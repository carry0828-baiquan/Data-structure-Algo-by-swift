//
//  pyramid.swift
//  data structure & algo
//
//  Created by barry on 2020/3/26.
//  Copyright © 2020 barry. All rights reserved.
//

import Foundation

// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a pyramid shape
// with N levels using the # character.  Make sure the
// pyramid has spaces on both the left *and* right hand sides
// --- Examples
//   pyramid(1)
//       '#'
//   pyramid(2)
//       ' # '
//       '###'
//   pyramid(3)
//       '  #  '
//       ' ### '
//       '#####'



//iteration
func pyramid(n:Int) {
    let midpoint = (2*n-1).quotientAndRemainder(dividingBy: 2).quotient
    //print(midpoint)
    for row in 0..<n {
        var stair = ""
        for col in 0 ... (n-1)*2 {
            if  midpoint - row <= col && midpoint + row >= col {
                stair += "#"
            }else {
                stair += " "
            }
        }
        print(stair)
    }
}



//recursion way

//func pyramidRecur( n:Int, row:Int = 0, level:String = "") {
//    if (row == n) {
//        return
//    }
//
//    if (level.count == 2 * n - 1) {
//        print(level)
//        return pyramidRecur(n: n, row: row + 1)
//    }
//
//    let  midpoint = (2*n-1).quotientAndRemainder(dividingBy: 2).quotient
//    var stair:String = ""
//    if (midpoint - row <= level.count && midpoint + row >= level.count) {
//        stair += "#"
//    } else {
//        stair += " "
//    }
//    pyramidRecur(n: 9, level: stair)
//}

