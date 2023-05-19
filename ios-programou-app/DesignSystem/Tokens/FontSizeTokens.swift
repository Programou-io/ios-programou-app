import SwiftUI

enum FontSizeTokens: Double {
    
    case xxs = 4
    case xs = 8
    case sm = 12
    case md = 16
    case lg = 20
    case xl = 24
    case xxl = 28
    
    var size: CGFloat {
        CGFloat(rawValue)
    }
}
