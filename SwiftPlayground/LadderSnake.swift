//
//  LadderSnake.swift
//  SwiftPlayground
//
//  Created by Joe G on 25/03/20.
//  Copyright © 2020 Nusantarian. All rights reserved.
//

import Foundation

class LadderSnake{
    func run()  {
        let finalSquare = 25
        var board = [Int](repeating: 0, count: finalSquare + 1)
        board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        
        var square = 0
        var diceRoll = 0
        repeat {
           square += board[square]
           
           diceRoll += 1
           if diceRoll == 7 { diceRoll = 1 }
           
           square += diceRoll
           print(square)
        } while square < finalSquare
        print("Game over!")
    }
}
