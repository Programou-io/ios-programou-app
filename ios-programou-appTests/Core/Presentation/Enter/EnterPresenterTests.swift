import XCTest
@testable import Programou

final class EnterPresenterTests: XCTestCase {
    func test_title_equalLocalization() {
        let sut = EnterPresenter()
        XCTAssertEqual(sut.title, EnterLocalize.title.text)
    }
    
    func test_description_equalLocalization() {
        let sut = EnterPresenter()
        XCTAssertEqual(sut.description, EnterLocalize.description.text)
    }
    
    func test_nameLabel_equalLocalization() {
        let sut = EnterPresenter()
        XCTAssertEqual(sut.nameLabel, EnterLocalize.nameTextFieldLabel.text)
    }
    
    func test_namePlaceholder_equalLocalization() {
        let sut = EnterPresenter()
        XCTAssertEqual(sut.namePlaceholder, EnterLocalize.nameTextFieldPlaceholder.text)
    }
    
    func test_accountAccessButtonDescription_equalLocalization() {
        let sut = EnterPresenter()
        XCTAssertEqual(sut.accountAccessButtonDescription, EnterLocalize.accessButtonDescription.text)
    }
    
    func test_accountAccessButtonTitle_equalLocalization() {
        let sut = EnterPresenter()
        XCTAssertEqual(sut.accountAccessButtonTitle, EnterLocalize.accessButtonTitle.text)
    }
    
    func test_nextStepButtonTitle_equalLocalization() {
        let sut = EnterPresenter()
        XCTAssertEqual(sut.nextStepButtonTitle, EnterLocalize.nextStepButtonTitle.text)
    }
}
