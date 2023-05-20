import XCTest
import SwiftUI

@testable import Programou

final class ColorProviderTests: XCTestCase {
    func test_white_color_provided() {
        let white = Color(red: 1, green: 1, blue: 1, opacity: 1)
        XCTAssertEqual(ColorProvider.color(.white), white)
    }
    
    func test_black_color_provided() {
        let black = Color(red: 0, green: 0, blue: 0, opacity: 1)
        XCTAssertEqual(ColorProvider.color(.black), black)
    }
    
    func test_graies_color_provided() {
        XCTAssertEqual(ColorProvider.color(.gray100), makeColor(red: 225, green: 225, blue: 230))
        XCTAssertEqual(ColorProvider.color(.gray200), makeColor(red: 169, green: 169, blue: 178))
        XCTAssertEqual(ColorProvider.color(.gray400), makeColor(red: 124, green: 124, blue: 138))
        XCTAssertEqual(ColorProvider.color(.gray500), makeColor(red: 80, green: 80, blue: 89))
        XCTAssertEqual(ColorProvider.color(.gray600), makeColor(red: 50, green: 50, blue: 56))
        XCTAssertEqual(ColorProvider.color(.gray700), makeColor(red: 41, green: 41, blue: 46))
        XCTAssertEqual(ColorProvider.color(.gray800), makeColor(red: 32, green: 32, blue: 36))
        XCTAssertEqual(ColorProvider.color(.gray900), makeColor(red: 18, green: 18, blue: 20))
    }
    
    func test_turquoises_color_provided() {
        XCTAssertEqual(ColorProvider.color(.turquoise100), makeColor(red: 151, green: 244, blue: 229))
        XCTAssertEqual(ColorProvider.color(.turquoise200), makeColor(red: 116, green: 232, blue: 212))
        XCTAssertEqual(ColorProvider.color(.turquoise500), makeColor(red: 46, green: 209, blue: 181))
        XCTAssertEqual(ColorProvider.color(.turquoise700), makeColor(red: 21, green: 135, blue: 116))
        XCTAssertEqual(ColorProvider.color(.turquoise800), makeColor(red: 12, green: 94, blue: 80))
    }
    
    func test_purples_color_provided() {
        XCTAssertEqual(ColorProvider.color(.purple100), makeColor(red: 157, green: 78, blue: 221))
        XCTAssertEqual(ColorProvider.color(.purple200), makeColor(red: 123, green: 44, blue: 191))
        XCTAssertEqual(ColorProvider.color(.purple500), makeColor(red: 90, green: 24, blue: 154))
        XCTAssertEqual(ColorProvider.color(.purple700), makeColor(red: 60, green: 9, blue: 108))
        XCTAssertEqual(ColorProvider.color(.purple800), makeColor(red: 36, green: 0, blue: 70))
    }
    
    func test_reds_color_provided() {
        XCTAssertEqual(ColorProvider.color(.red100), makeColor(red: 173, green: 40, blue: 49))
        XCTAssertEqual(ColorProvider.color(.red200), makeColor(red: 128, green: 14, blue: 19))
        XCTAssertEqual(ColorProvider.color(.red500), makeColor(red: 100, green: 13, blue: 20))
        XCTAssertEqual(ColorProvider.color(.red700), makeColor(red: 56, green: 4, blue: 14))
        XCTAssertEqual(ColorProvider.color(.red800), makeColor(red: 37, green: 9, blue: 2))
    }
    
    func test_blues_color_provided() {
        XCTAssertEqual(ColorProvider.color(.blue100), makeColor(red: 0, green: 166, blue: 251))
        XCTAssertEqual(ColorProvider.color(.blue200), makeColor(red: 5, green: 130, blue: 202))
        XCTAssertEqual(ColorProvider.color(.blue500), makeColor(red: 0, green: 100, blue: 148))
        XCTAssertEqual(ColorProvider.color(.blue700), makeColor(red: 0, green: 53, blue: 84))
        XCTAssertEqual(ColorProvider.color(.blue800), makeColor(red: 5, green: 25, blue: 35))
    }
    
    private func makeColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> Color {
        Color(red: red/255, green: green/255, blue: blue/255, opacity: 1)
    }
}
