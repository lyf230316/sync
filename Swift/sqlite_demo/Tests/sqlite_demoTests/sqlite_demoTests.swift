import XCTest
@testable import sqlite_demo

final class sqlite_demoTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(sqlite_demo().text, "Hello, World!")
    }
}
