//
//  CrainOperator.swift
//  Containers
//
//  Created by Tresa on 10/19/15.
//
//

import Foundation

class CrainOperator {
    let stack: Stack
    let crain: Crain
    
    init(withStack stack: Stack, withCrain crain: Crain) {
        self.stack = stack
        self.crain = crain
    }
    
    func take(container: Container) {
        self.crain.raise(container)
        self.crain.lower(container)
        self.stack.push(container)
    }
}
