//
//  HashStorageTest.swift
//  HashStorageTest
//
//  Created by lyf on 2023/8/4.
//

import XCTest
import CryptoKit

final class HashStorageTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testUpload() {
        Storage.upload(wd: "/tmp/hashStorage",
                                   file: "/Users/msi/Desktop/ast.json",
                                   keyPath: "/Users/msi/.ssh/id_ed25519",
                                   repo: "git@github.com:lyf230316/gitTest.git",
                                   branch: "test",
                                   commit: "ppt")
    }

    func testHash() {
        let res = hashForFile("/Users/msi/Desktop/ast.json")
        print(res)
    }
}
