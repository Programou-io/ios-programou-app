import XCTest
@testable import programou

final class ColorTokensTests: XCTestCase {
    func test_white_asHexDecimalVaue() {
        XCTAssertEqual(ColorTokens.white.hex, "#FFF")
    }
    
    func test_black_asHexDecimalVaue() {
        XCTAssertEqual(ColorTokens.black.hex, "#000")
    }
}
