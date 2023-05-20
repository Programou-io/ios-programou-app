import XCTest
@testable import Programou

final class HomePresenterTests: XCTestCase {
    func test_title_isLocalized() {
        let sut = HomePresenter()
        XCTAssertEqual(sut.title, HomeLocalize.title.text)
    }
    
    func test_description_isLocalized() {
        let sut = HomePresenter()
        XCTAssertEqual(sut.description, HomeLocalize.description.text)
    }
    
    func test_buttonTitle_isLocalized() {
        let sut = HomePresenter()
        XCTAssertEqual(sut.buttonTitle, HomeLocalize.buttonTitle.text)
    }
}
