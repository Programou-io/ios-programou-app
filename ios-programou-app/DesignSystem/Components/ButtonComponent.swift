import SwiftUI

struct ButtonComponent: View {
    
    private let title: String
    private let action: () -> Void
    
    init(
        title: String,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            ZStack {
                EmptyView.backgroundColor(.turquoise500)
                
                TextComponent(title)
                    .bold()
            }
        }
        .cornerRadius(8)
        .frame(height: 40)
    }
}
