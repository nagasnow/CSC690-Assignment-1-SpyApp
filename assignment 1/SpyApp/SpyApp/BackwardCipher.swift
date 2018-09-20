//
//  BackwardCipher.swift
//  SpyApp
//
//  Created by Justin on 9/17/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import Foundation

struct BackwardCipher: Cipher {
    
    func encode(_ plaintext: String, secret: String) -> String? {
        var encoded = ""
        let splitText = plaintext.components(separatedBy: " ")
        
        for words in splitText {
            encoded = encoded + String(words.reversed()) + " "
        }
        return encoded
    }
    
    func decode(_ plaintext: String, secret: String) -> String? {
        var decoded = ""
        let splitText = plaintext.components(separatedBy: " ")
        
        for words in splitText {
            decoded = decoded + String(words.reversed()) + " "
        }
        decoded = String(decoded.reversed())
        return decoded
    }
}
