enum HomeLocalize: String, Localizable {

    case title = "HOME_TITLE"
    case description = "HOME_DESCRIPTION"
    case buttonTitle = "HOME_BUTTON_TITLE"
    
    var table: String { "Home" }
    
    var text: String {
        getByKey(rawValue)
    }
}
