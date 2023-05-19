import XCTest
import SwiftUI
@testable import programou

final class ColorProviderTests: XCTestCase {
    func test_white_color_provided() {
        let provider = ColorProvider()
        XCTAssertEqual(provider.color(.white), Color(red: 1, green: 1, blue: 1, opacity: 1))
    }
    
    func test_black_color_provided() {
        let provider = ColorProvider()
        XCTAssertEqual(provider.color(.black), Color(red: 0, green: 0, blue: 0, opacity: 1))
    }
}
