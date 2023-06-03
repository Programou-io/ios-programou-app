import SwiftUI

@main
struct ProgramouApp: App {
    
    @State private var route = Route.home
    
    var body: some Scene {
        WindowGroup { content }
    }
    
    private var content: some View {
        NavigationStack {
            makeHome()
            
            enterLink
        }
    }
    
    private var enterLink: some View {
        let isActive = route.isPresented(.enter, onBack: onBackToHomeActionHandler)
        let destination = makeEnter
        return NavigationLink(
            isActive: isActive,
            destination: destination,
            label: EmptyView.init
        ).hidden()
    }
    
    private func makeHome() -> some View {
        HomeComposer.compose(onEnter: onEnterActionHandler)
    }
    
    private func makeEnter() -> some View {
        EnterComposer.compose()
            .navigationBarBackButtonHidden()
    }
    
    private func onEnterActionHandler() {
        route = .enter
    }
    
    private func onBackToHomeActionHandler() {
        route = .home
    }
}
