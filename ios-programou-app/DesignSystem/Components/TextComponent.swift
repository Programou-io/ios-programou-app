import SwiftUI

struct TextComponent: View {
    
    private let text: String
    private let color: ColorTokens
    private let size: FontSizeTokens
    
    init(
        _ text: String,
        color: ColorTokens = .white,
        size: FontSizeTokens = .md
    ) {
        self.text = text
        self.color = color
        self.size = size
    }
    
    var body: some View {
        Text(text)
            .textColor(color)
            .fontSize(size)
    }
}

struct TextComponent_Previews: PreviewProvider {
    
    private static let title = "Text Component"
    
    static var previews: some View {
        VStack {
            TextComponent(title)
            TextComponent(title, color: .gray400, size: .xl)
            TextComponent(title, color: .red100, size: .lg)
        }
            .padding()
            .previewDisplayName(title)
            .previewLayout(.fixed(width: 350, height: 200))
            .preferredColorScheme(.dark)
    }
}
