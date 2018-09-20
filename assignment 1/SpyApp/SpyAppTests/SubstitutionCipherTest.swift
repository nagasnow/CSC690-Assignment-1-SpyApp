//
//  SubstitutionCipherTest.swift
//  SpyAppTests
//
//  Created by Justin on 9/20/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import XCTest
@testable import SpyApp

class SubstitutionCipherTest: XCTestCase {
    
    func testPlainTextMappedToNumber() {
        let cipher = SubstitutionCipher()
        let plaintext = "123"
        let result = cipher.encode(plaintext, secret:"")
        
        XCTAssertNotNil(result)
    }
    
    func testPlainTextIsLowerCase() {
        let cipher = SubstitutionCipher()
        let plaintext = "lower case letters"
        let result = cipher.encode(plaintext, secret:"")
        
        XCTAssertNotNil(result)
    }
}
