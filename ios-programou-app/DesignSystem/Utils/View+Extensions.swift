import SwiftUI

extension View {
    static func backgroundColor(_ token: ColorTokens) -> Color {
        ColorProvider.color(token)
    }
    
    func backgroundColor(_ token: ColorTokens) -> some View {
        AnyView.backgroundColor(token)
    }
    
    func textColor(_ token: ColorTokens) -> some View {
        foregroundColor(ColorProvider.color(token))
    }
    
    func fontSize(_ sizeToken: FontSizeTokens) -> some View {
        font(.system(size: sizeToken.size))
    }
    
    func padding(_ sizeToken: FontSizeTokens) -> some View {
        padding(sizeToken.size)
    }
}
