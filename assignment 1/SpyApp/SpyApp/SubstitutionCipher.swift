//
//  SubstitutionCipher.swift
//  SpyApp
//
//  Created by Justin on 9/15/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import Foundation

struct SubstitutionCipher: Cipher {
    
    func encode(_ plaintext: String, secret: String) -> String? {
        if(!plaintext.isAlphabetic) {
            return "Cannot Process Text"
        }
        var encoded = ""
        
        for character in plaintext {
            var unicode = character.unicodeScalars.first!.value
            if(unicode >= 97 && unicode <= 122) {
                unicode = unicode - 32
                let changedCharacter = substitutionEncode(character: String(UnicodeScalar(UInt8(unicode))))
                encoded = encoded + changedCharacter
            } else {
                let changedCharacter = substitutionEncode(character: String(character))
                encoded = encoded + changedCharacter
            }
        }
        return encoded
    }

    func decode(_ plaintext: String, secret: String) -> String?	 {
        if(!plaintext.isAlphabetic) {
            return "Cannot Process Text"
        }
        var decoded = ""
        
        for character in plaintext {
            var unicode = character.unicodeScalars.first!.value
            if(unicode >= 97 && unicode <= 122) {
                unicode = unicode - 32
                let changedCharacter = substitutionDecode(character: String(UnicodeScalar(UInt8(unicode))))
                decoded = decoded + changedCharacter
            } else {
                let changedCharacter = substitutionDecode(character: String(character))
                decoded = decoded + changedCharacter
            }
        }
        return decoded
    }
    
    func substitutionEncode(character: String) -> String {
        switch character {
        case "A":
            return "Q"
        case "B":
            return "W"
        case "C":
            return "E"
        case "D":
            return "R"
        case "E":
            return "T"
        case "F":
            return "Y"
        case "G":
            return "U"
        case "H":
            return "I"
        case "I":
            return "O"
        case "J":
            return "P"
        case "K":
            return "A"
        case "L":
            return "S"
        case "M" :
            return "D"
        case "N":
            return "F"
        case "O":
            return "G"
        case "P":
            return "H"
        case "Q":
            return "J"
        case "R":
            return "K"
        case "S":
            return "L"
        case "T":
            return "Z"
        case "U":
            return "X"
        case "V":
            return "C"
        case "W":
            return "V"
        case "X":
            return "B"
        case "Y":
            return "N"
        case "Z":
            return "M"
        default:
            return character
        }
    }
    
    func substitutionDecode(character: String) -> String{
        switch character {
        case "Q":
            return "A"
        case "W":
            return "B"
        case "E":
            return "C"
        case "R":
            return "D"
        case "T":
            return "E"
        case "Y":
            return "F"
        case "U":
            return "G"
        case "I":
            return "H"
        case "O":
            return "I"
        case "P":
            return "J"
        case "A":
            return "K"
        case "S":
            return "L"
        case "D" :
            return "M"
        case "F":
            return "N"
        case "G":
            return "O"
        case "H":
            return "P"
        case "J":
            return "Q"
        case "K":
            return "R"
        case "L":
            return "S"
        case "Z":
            return "T"
        case "X":
            return "U"
        case "C":
            return "V"
        case "V":
            return "W"
        case "B":
            return "X"
        case "N":
            return "Y"
        case "M":
            return "Z"
        default:
            return character
        }
    }
}

extension String {
    var isAlphabetic: Bool {
        return !isEmpty && range(of: "[^A-Za-z]", options: .regularExpression) == nil
    }
}


