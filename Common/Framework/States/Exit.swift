//
//  Exit.swift
//  OysterKit Mac
//
//  Created by Nigel Hughes on 14/07/2014.
//  Copyright (c) 2014 RED When Excited Limited. All rights reserved.
//

import Foundation

class Exit : TokenizationState {
    
    
    override func couldEnterWithCharacter(character: UnicodeScalar, controller: TokenizationController) -> Bool {
        return true
    }
    
    override func consume(character: UnicodeScalar, controller: TokenizationController) -> TokenizationStateChange {
        emitToken(controller, token: createToken(controller, useCurrentCharacter: false))
        return TokenizationStateChange.Exit(consumedCharacter: false)
    }
    
    override func serialize(indentation: String) -> String {
        return "^"+pseudoTokenNameSuffix()
    }
}