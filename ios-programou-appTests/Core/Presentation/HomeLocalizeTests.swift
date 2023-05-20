import XCTest
@testable import Programou

final class HomeLocalizeTests: XCTestCase {
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Home"
        let bundle = Bundle(for: HomePresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
