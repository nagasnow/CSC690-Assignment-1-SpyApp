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
        
        cipher.encode(plaintext,secret: "")
    }
}
