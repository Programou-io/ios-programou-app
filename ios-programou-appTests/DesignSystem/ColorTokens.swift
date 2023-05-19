import XCTest
@testable import programou

final class ColorTokensTests: XCTestCase {
    func test_white_asHexDecimalVaue() {
        XCTAssertEqual(ColorTokens.white.hex, "#FFF")
    }
    
    func test_black_asHexDecimalVaue() {
        XCTAssertEqual(ColorTokens.black.hex, "#000")
    }
    
    func test_gray100_asHexDecimalVaue() {
        XCTAssertEqual(ColorTokens.black.hex, "#000")
    }
    
    func test_graies_withHEXValue() {
        XCTAssertEqual(ColorTokens.gray100.hex, "#E1E1E6")
        XCTAssertEqual(ColorTokens.gray200.hex, "#A9A9B2")
        XCTAssertEqual(ColorTokens.gray400.hex, "#7C7C8A")
        XCTAssertEqual(ColorTokens.gray500.hex, "#505059")
        XCTAssertEqual(ColorTokens.gray600.hex, "#323238")
        XCTAssertEqual(ColorTokens.gray700.hex, "#29292E")
        XCTAssertEqual(ColorTokens.gray800.hex, "#202024")
        XCTAssertEqual(ColorTokens.gray900.hex, "#121214")
    }
    
    func test_turquoises_withHEXValue() {
        XCTAssertEqual(ColorTokens.turquoise100.hex, "#97F4E5")
        XCTAssertEqual(ColorTokens.turquoise200.hex, "#74E8D4")
        XCTAssertEqual(ColorTokens.turquoise500.hex, "#2ED1B5")
        XCTAssertEqual(ColorTokens.turquoise700.hex, "#158774")
        XCTAssertEqual(ColorTokens.turquoise800.hex, "#0C5E50")
    }
    
    func test_purples_withHEXValue() {
        XCTAssertEqual(ColorTokens.purple100.hex, "#9D4EDD")
        XCTAssertEqual(ColorTokens.purple200.hex, "#7B2CBF")
        XCTAssertEqual(ColorTokens.purple500.hex, "#5A189A")
        XCTAssertEqual(ColorTokens.purple700.hex, "#3C096C")
        XCTAssertEqual(ColorTokens.purple800.hex, "#240046")
    }
}
