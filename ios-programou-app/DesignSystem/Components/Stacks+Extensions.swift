import SwiftUI

extension VStack where Content: View {
    init(
        alignment: HorizontalAlignment,
        spacing: FontSizeTokens,
        @ViewBuilder _ content: @escaping () -> Content
    ) {
        self.init(
            alignment: alignment,
            spacing: spacing.size,
            content: content
        )
    }
}

extension HStack where Content: View {
    init(
        alignment: VerticalAlignment,
        spacing: FontSizeTokens,
        @ViewBuilder _ content: @escaping () -> Content
    ) {
        self.init(alignment: alignment, spacing: spacing.size, content: content)
    }
}
