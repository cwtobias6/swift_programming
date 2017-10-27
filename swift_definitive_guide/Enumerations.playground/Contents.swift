//: Playground - noun: a place where people can play

import Cocoa


enum CompassPoint {
    
    case north
    case east
    case south
    case west
    
}

var directionToHead = CompassPoint.west

directionToHead = .east

switch directionToHead {
case .east:
    print("You're headed in the right direction.")
default:
    print("You're going in the wrong direction.")
}

enum ConnectionState: Int {
    case Unknown = -1
    case Disconnected
    case Connecting
    case Connected
}

var iAmUnknown = ConnectionState.Unknown

print(iAmUnknown)

// Associated Values















