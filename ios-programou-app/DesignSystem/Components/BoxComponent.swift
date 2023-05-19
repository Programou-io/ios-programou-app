import SwiftUI

struct BoxComponent<Content: View>: View {
    
    private let content: () -> Content
    
    init(@ViewBuilder _ content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        ZStack {
            EmptyView.backgroundColor(.gray800)
            
            content()
        }
        .cornerRadius(8)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct BoxComponent_Priviews: PreviewProvider {
    
    private static let title = "Box Component"
    
    static var previews: some View {
        BoxComponent {
            Text(title)
        }
        .padding()
        .previewDisplayName(title)
        .previewLayout(.fixed(width: 200, height: 200))
        .preferredColorScheme(.dark)
    }
}
