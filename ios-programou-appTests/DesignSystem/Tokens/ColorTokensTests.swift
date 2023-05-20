import XCTest
@testable import Programou

final class ColorTokensTests: XCTestCase {
    func test_white_asHexDecimalVaue() {
        XCTAssertEqual(ColorTokens.white.hex, "#FFF")
    }
    
    func test_black_asHexDecimalVaue() {
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
    
    func test_redies_withHEXValue() {
        XCTAssertEqual(ColorTokens.red100.hex, "#AD2831")
        XCTAssertEqual(ColorTokens.red200.hex, "#800E13")
        XCTAssertEqual(ColorTokens.red500.hex, "#640D14")
        XCTAssertEqual(ColorTokens.red700.hex, "#38040E")
        XCTAssertEqual(ColorTokens.red800.hex, "#250902")
    }
    
    func test_blues_withHEXValue() {
        XCTAssertEqual(ColorTokens.blue100.hex, "#00A6FB")
        XCTAssertEqual(ColorTokens.blue200.hex, "#0582CA")
        XCTAssertEqual(ColorTokens.blue500.hex, "#006494")
        XCTAssertEqual(ColorTokens.blue700.hex, "#003554")
        XCTAssertEqual(ColorTokens.blue800.hex, "#051923")
    }
}
