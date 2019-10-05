import XCTest
@testable import WPImageKit

final class WPImageKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(WPImageKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
