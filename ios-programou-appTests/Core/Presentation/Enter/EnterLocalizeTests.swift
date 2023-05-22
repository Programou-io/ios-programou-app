import XCTest
@testable import Programou

final class EnterLocalizeTests: XCTestCase {
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Enter"
        let bundle = Bundle(for: EnterPresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
    
    func test_table_isEnter() {
        EnterLocalize.allCases.forEach { XCTAssertEqual($0.table, "Enter") }
    }
}
