//
//  NumericLetterCipher.swift
//  SpyApp
//
//  Created by Justin on 9/15/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import Foundation

struct NumericLetterCipher: Cipher {
    func encode(_ plaintext: String, secret: String) -> String {
        var encoded = ""
        
        for character in plaintext {
            let unicode = character.unicodeScalars.first!.value
            encoded = encoded + String(unicode) + "-"
        }
        
        return encoded
    }
}
