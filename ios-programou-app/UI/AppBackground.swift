import SwiftUI

struct AppBackground<Content: View>: View {
    
    private let content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        ZStack {
            colorBackground
            
            content()
        }
    }
    
    private var colorBackground: some View {
        EmptyView
            .backgroundColor(.gray900)
            .ignoresSafeArea()
    }
}
