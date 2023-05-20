import SwiftUI

enum HomeComposer {
    static func compose() -> some View {
        let presenter = HomePresenter()
        let screen = Home(presenter: presenter)
        return screen
    }
}
