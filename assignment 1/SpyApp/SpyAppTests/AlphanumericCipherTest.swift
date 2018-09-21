//
//  AlphanumericCipherTest.swift
//  SpyAppTests
//
//  Created by Justin on 9/20/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import XCTest
@testable import SpyApp

class AlphanumericCipherTest: XCTestCase {
    func test_oneCharacterStringGetsMappedToSelfWith_0_secret() {
        let cipher = AlphanumericCesarCipher()
        let plaintext = "a"
        
        let result = cipher.encode(plaintext, secret: "0")
        
        XCTAssertEqual("A", result)
    }
    
    func testNotAlphaNumericPlainTextInput() {
        let cipher = AlphanumericCesarCipher()
        let plaintext = "!"
        
        let result = cipher.encode(plaintext,secret: "")
        
        XCTAssertNotNil(result)
    }
    
    func testLoopingBetweenNumbersAndLetters() {
        let cipher = AlphanumericCesarCipher()
        let plaintext = "11111"
        let plaintext2 = "zzzzz"
        
        let result = cipher.encode(plaintext2,secret:"5")
        let result2 = cipher.decode(plaintext,secret:"5")
        
        XCTAssertEqual("WWWWW",result2)
        XCTAssertEqual("44444",result)
    }
}
