//
//  printingSteps.swift
//  data structure & algo
//
//  Created by barry on 2020/3/26.
//  Copyright © 2020 barry. All rights reserved.
//
// --- Directions
// Write a function that accepts a positive number N.
// The function should console log a step shape
// with N levels using the # character.  Make sure the
// step has spaces on the right hand side!
// --- Examples
//   steps(2)
//       '# '
//       '##'
//   steps(3)
//       '#  '
//       '## '
//       '###'
//   steps(4)
//       '#   '
//       '##  '
//       '### '
//       '####'
import Foundation

func steps(n:Int, row:Int = 0, stair:String = "") {
    if (n == row) {
        return
      }

    if (n == stair.count) {
        print(stair)
        return steps(n: n, row: row + 1)
      }

      let  add = stair.count <= row ? "#": " "
    steps(n: n, row: row, stair: stair + add)
    }


 
//recursion way

func step(n:Int) {
    for row in 0..<n{
        var stair = ""
        for col in 0..<n{
            if (col <= row) {
                stair += "#"
            } else {
                stair += ""
            }
        }
        print(stair);
    }
}


