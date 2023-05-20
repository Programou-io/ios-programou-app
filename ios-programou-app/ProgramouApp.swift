import SwiftUI

@main
struct ProgramouApp: App {
    
    var body: some Scene {
        WindowGroup {
            content
        }
    }
    
    private var content: some View {
        AppBackground {
            HomeComposer.compose()
        }
    }
}
