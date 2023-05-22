enum EnterLocalize: String, Localizable, CaseIterable {

    case title = "TITLE"
    case description = "DESCRIPTION"
    case nameTextFieldLabel = "NAME_TEXT_FIELD_LABEL"
    case nameTextFieldPlaceholder = "NAME_TEXT_FIELD_PLACEHOLDER"
    case accessButtonDescription = "ACCESS_BUTTON_DESCRIPTION"
    case accessButtonTitle = "ACCESS_BUTTON_TITLE"
    case nextStepButtonTitle = "NEXT_STEP_BUTTON_TITLE"
    
    var table: String { "Enter" }
    
    var text: String {
        getByKey(rawValue)
    }
}
