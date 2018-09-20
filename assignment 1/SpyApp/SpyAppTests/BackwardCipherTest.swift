//
//  BackwardCipherTest.swift
//  SpyAppTests
//
//  Created by Justin on 9/20/18.
//  Copyright © 2018 Axel Ancona Esselmann. All rights reserved.
//

import XCTest
@testable import SpyApp

class BackwardCipherTest: XCTestCase {
    func testStringMadeOfAlmostAnything() {
        let cipher = BackwardCipher()
        let plaintext = "!@#$%^&*() 012983465 fdhaijewoankjf AWEOVIJVEWIJFKSDNV WFIJWE#@%^#$^2943875t"
        let result = cipher.encode(plaintext, secret:"")
        
        XCTAssertNotNil(result)
    }
}
