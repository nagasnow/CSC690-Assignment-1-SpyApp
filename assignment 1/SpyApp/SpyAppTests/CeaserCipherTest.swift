//
//  CeaserCipherTest.swift
//  SpyAppTests
//
//  Created by Justin on 9/20/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import XCTest
@testable import SpyApp

class CeaserCipherTest: XCTestCase {
    
    var cipher: Cipher!
    
    override func setUp() {
        super.setUp()
        cipher = CeaserCipher()
    }
    
    func test_oneCharacterStringGetsMappedToSelfWith_0_secret() {
        let cipher = CeaserCipher()
        let plaintext = "a"
        
        let result = cipher.encode(plaintext, secret: "0")
        let result2 = cipher.decode(plaintext, secret: "0")
        
        XCTAssertEqual(plaintext, result)
        XCTAssertEqual(plaintext, result2)
    }
    
    func test_nonNumericInputForSecret() {
        let result = cipher.encode("b", secret: "nonNumericString")
        let result2 = cipher.decode("b", secret: "nonNumericString")
        
        XCTAssertNil(result)
        XCTAssertNil(result2)
    }
}
