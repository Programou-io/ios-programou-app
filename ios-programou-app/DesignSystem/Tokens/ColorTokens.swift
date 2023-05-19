enum ColorTokens: String {
    case white = "#FFF"
    case black = "#000"
    
    case gray100 = "#E1E1E6"
    case gray200 = "#A9A9B2"
    case gray400 = "#7C7C8A"
    case gray500 = "#505059"
    case gray600 = "#323238"
    case gray700 = "#29292E"
    case gray800 = "#202024"
    case gray900 = "#121214"
    
    case turquoise100 = "#97F4E5"
    case turquoise200 = "#74E8D4"
    case turquoise500 = "#2ED1B5"
    case turquoise700 = "#158774"
    case turquoise800 = "#0C5E50"
    
    case purple100 = "#9D4EDD"
    case purple200 = "#7B2CBF"
    case purple500 = "#5A189A"
    case purple700 = "#3C096C"
    case purple800 = "#240046"
    
    case red100 = "#AD2831"
    case red200 = "#800E13"
    case red500 = "#640D14"
    case red700 = "#38040E"
    case red800 = "#250902"
    
    case blue100 = "#00A6FB"
    case blue200 = "#0582CA"
    case blue500 = "#006494"
    case blue700 = "#003554"
    case blue800 = "#051923"
    
    var hex: String {
        rawValue
    }
}
