//
//  Stack.swift
//  CodeDoor
//
//  Created by Mohamed El Naggar on 5/11/17.
//  Copyright © 2017 Mohamed El Naggar. All rights reserved.
//


// Model Part of MVC
import Foundation

class Stack {
    public var items = Array<Int>()
    
    
    func push(item: Int) {
        if items.count == 7 {
            print("You can not insert any more")
            return
        }
        
        items.append(item)
    }
    
    func pop() {
        items.removeLast()
    }
    
    func top() -> Int {
        if items.count == 0 {
            print("Error , Stack is Empty")
            return -1
        }
        
        return items.last!
    }
}
