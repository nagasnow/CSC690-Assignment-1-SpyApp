//
//  AlphanumericCesarCipher.swift
//  SpyApp
//
//  Created by Justin on 9/14/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import Foundation

struct AlphanumericCesarCipher: Cipher {
    
    func encode(_ plaintext: String, secret: String) -> String? {
        if(!plaintext.isAlphanumeric) {
            return "Error Not An Alphanumeric Input!"
        }
        
        var encoded = ""
        let shiftBy = UInt32(secret)!
        
        for character in plaintext {
            var unicode = character.unicodeScalars.first!.value
            
            if(unicode <= 122 && unicode >= 97) {
                unicode = unicode - 32
            }
            
            unicode = unicode + shiftBy
            
            if(unicode > 90) {
                unicode = 48 + (unicode - 90)
            }
            
            if(unicode > 57 && unicode < 65) {
                unicode = 65 + (unicode - 57)
            }
            
            let shiftedCharacter = String(UnicodeScalar(UInt8(unicode)))
            encoded = encoded + shiftedCharacter
        }
        return encoded
    }
    
    func decode(_ plaintext: String, secret: String) -> String? {
        if(!plaintext.isAlphanumeric) {
            return "Error Not An Alphanumeric Input!"
        }
        
        var decoded = ""
        let shiftBy = UInt32(secret)!
        
        for character in plaintext {
            var unicode = character.unicodeScalars.first!.value
            if(unicode <= 122 && unicode >= 97) {
                unicode = unicode - 32
            }
            
            var shiftedUnicode = unicode - shiftBy
            
            if(unicode < 65 && unicode > 57) {
                shiftedUnicode = 57 - (unicode - 65)
            }
            
            if(unicode < 48) {
                shiftedUnicode = 90 - (unicode - 48)
            }
            
            let shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
            decoded = decoded + shiftedCharacter
        }
        return decoded
    }
}

extension String {
    var isAlphanumeric: Bool {
        return !isEmpty && range(of: "[^A-Za-z0-9]", options: .regularExpression) == nil
    }
}


