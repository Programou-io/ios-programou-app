import XCTest

@testable import Programou

final class FontSizeTokensTests: XCTestCase {
    func test_extraExtraSmall_token_equal_4() {
        XCTAssertEqual(FontSizeTokens.xxs.size, 4)
    }
    
    func test_extraSmall_token_equal_8() {
        XCTAssertEqual(FontSizeTokens.xs.size, 8)
    }
    
    func test_small_token_equal_12() {
        XCTAssertEqual(FontSizeTokens.sm.size, 12)
    }
    
    func test_medium_token_equal_16() {
        XCTAssertEqual(FontSizeTokens.md.size, 16)
    }
    
    func test_large_token_equal_20() {
        XCTAssertEqual(FontSizeTokens.lg.size, 20)
    }
    
    func test_extraLarge_token_equal_24() {
        XCTAssertEqual(FontSizeTokens.xl.size, 24)
    }
    
    func test_extraExtraLarge_token_equal_18() {
        XCTAssertEqual(FontSizeTokens.xxl.size, 28)
    }
}
