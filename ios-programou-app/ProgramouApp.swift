import SwiftUI

@main
struct ProgramouApp: App {
    
    enum Route {
        case home
        case enter
        
        func isPresented(_ route: Route, onBack: @escaping Bind) -> Binding<Bool> {
            return Binding(get: { self == route }, set: { [onBack] _ in onBack() })
        }
    }
    
    @State private var route = Route.home
    
    var body: some Scene {
        WindowGroup {
            content
        }
    }
    
    private var content: some View {
        NavigationStack {
            makeHome()
            
            enterLink
        }
    }
    
    private var enterLink: some View {
        return NavigationLink(
            isActive: route.isPresented(.enter, onBack: { route = .home }),
            destination: makeEnter,
            label: EmptyView.init
        )
    }
    
    private func makeHome() -> some View {
        HomeComposer.compose(onEnter: onEnterActionHandler)
            .navigationBarBackButtonHidden()
    }
    
    private func makeEnter() -> some View {
        EnterComposer.compose()
            .navigationBarBackButtonHidden()
    }
    
    private func onEnterActionHandler() {
        route = .enter
    }
    
    private func onAppearHomeActionHandler() {
        route = .home
    }
}
