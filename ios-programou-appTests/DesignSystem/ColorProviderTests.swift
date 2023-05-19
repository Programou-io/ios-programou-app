import XCTest
import SwiftUI
@testable import programou

final class ColorProviderTests: XCTestCase {
    func test_white_color_provided() {
        let provider = ColorProvider()
        let white = Color(red: 1, green: 1, blue: 1, opacity: 1)
        XCTAssertEqual(provider.color(.white), white)
    }
    
    func test_black_color_provided() {
        let provider = ColorProvider()
        let black = Color(red: 0, green: 0, blue: 0, opacity: 1)
        XCTAssertEqual(provider.color(.black), black)
    }
    
    func test_graies_color_provided() {
        let provider = ColorProvider()
        
        XCTAssertEqual(provider.color(.gray100), makeColor(red: 225, green: 225, blue: 230))
        XCTAssertEqual(provider.color(.gray200), makeColor(red: 169, green: 169, blue: 178))
        XCTAssertEqual(provider.color(.gray400), makeColor(red: 124, green: 124, blue: 138))
        XCTAssertEqual(provider.color(.gray500), makeColor(red: 80, green: 80, blue: 89))
        XCTAssertEqual(provider.color(.gray600), makeColor(red: 50, green: 50, blue: 56))
        XCTAssertEqual(provider.color(.gray700), makeColor(red: 41, green: 41, blue: 46))
        XCTAssertEqual(provider.color(.gray800), makeColor(red: 32, green: 32, blue: 36))
        XCTAssertEqual(provider.color(.gray900), makeColor(red: 18, green: 18, blue: 20))
    }
    
    func test_turquoises_color_provided() {
        let provider = ColorProvider()
        
        XCTAssertEqual(provider.color(.turquoise100), makeColor(red: 151, green: 244, blue: 229))
        XCTAssertEqual(provider.color(.turquoise200), makeColor(red: 116, green: 232, blue: 212))
        XCTAssertEqual(provider.color(.turquoise500), makeColor(red: 46, green: 209, blue: 181))
        XCTAssertEqual(provider.color(.turquoise700), makeColor(red: 21, green: 135, blue: 116))
        XCTAssertEqual(provider.color(.turquoise800), makeColor(red: 12, green: 94, blue: 80))
    }
    
    private func makeColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> Color {
        Color(red: red/255, green: green/255, blue: blue/255, opacity: 1)
    }
}
