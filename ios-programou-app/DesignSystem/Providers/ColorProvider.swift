import SwiftUI

final class ColorProvider {
    func color(_ token: ColorTokens) -> Color {
        let rgba = convertToRGBA(hex: token.hex)
        return Color(
            .sRGB,
            red: rgba.red / 255,
            green: rgba.green / 255,
            blue:  rgba.blue / 255,
            opacity: rgba.alfa / 255
        )
    }
    
    typealias RBGA = (red: CGFloat, blue: CGFloat, green: CGFloat, alfa: CGFloat)
    private func convertToRGBA(hex: String) -> RBGA {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        return RBGA(
            red: CGFloat(r),
            blue: CGFloat(b),
            green: CGFloat(g),
            alfa: CGFloat(a)
        )
    }
}
