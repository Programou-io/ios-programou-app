import XCTest
@testable import Programou

final class HomeLocalizeTests: XCTestCase {
    
    private let tableName = "Home"
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let bundle = Bundle(for: HomePresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, tableName)
    }
    
    func test_table_isHome() {
        HomeLocalize.allCases.forEach { XCTAssertEqual($0.table, tableName) }
    }
}
