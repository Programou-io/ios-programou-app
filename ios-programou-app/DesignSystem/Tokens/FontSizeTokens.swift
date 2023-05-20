import SwiftUI

enum FontSizeTokens: Double {
    
    ///4px
    case xxs = 4
    ///8px
    case xs = 8
    ///12px
    case sm = 12
    ///16px
    case md = 16
    ///20px
    case lg = 20
    ///24px
    case xl = 24
    ///28px
    case xxl = 28
    ///32px
    case xxxl = 32
    
    var size: CGFloat {
        CGFloat(rawValue)
    }
}
