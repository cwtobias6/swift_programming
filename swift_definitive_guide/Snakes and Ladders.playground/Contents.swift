//: Playground - noun: a place where people can play

import Cocoa

// Snakes and Ladders


let finalSquare = 25
var board = [Int] (repeating: 0, count: finalSquare + 1)


board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02 // Create Ladders
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08 // Create Snakes

var square = 0
var diceRoll = 0

while square < finalSquare {
    
    diceRoll += 1
    
    if diceRoll == 7 {
        diceRoll = 1
    }
    
    square += diceRoll
    
    if square < board.count {
        square += board[square]
        
    }
}

print("Game Over")



