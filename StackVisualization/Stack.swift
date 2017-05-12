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
    public var items = Array<String>()
    
    
    func push(item: String) {
        if items.count == 7 {
            print("You can not insert any more")
            return
        }
        
        items.append(item)
    }
    
    func pop() {
        if items.count > 0 {
            items.removeLast()
        }
    }
    
    func top() -> String {
        if items.count == 0 {
            print("Error , Stack is Empty")
            return "-1"
        }
        
        return items.last!
    }
}
