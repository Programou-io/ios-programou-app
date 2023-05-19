import XCTest
@testable import programou

final class ColorTokensTests: XCTestCase {
    func test() {
        XCTAssertEqual(ColorTokens.white.hex, "#FFF")
    }
}
