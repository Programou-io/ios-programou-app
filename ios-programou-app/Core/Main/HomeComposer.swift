import SwiftUI

enum HomeComposer {
    static func compose(onEnter: @escaping Bind) -> some View {
        let presenter = HomePresenter()
        let screen = Home(presenter: presenter, onGoToEnter: onEnter)
        
        return screen
    }
}
