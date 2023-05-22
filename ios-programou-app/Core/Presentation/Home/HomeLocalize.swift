enum HomeLocalize: String, Localizable, CaseIterable {

    case title = "TITLE"
    case description = "DESCRIPTION"
    case buttonTitle = "BUTTON_TITLE"
    
    var table: String { "Home" }
    
    var text: String {
        getByKey(rawValue)
    }
}
