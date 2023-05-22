import SwiftUI

enum EnterComposer {
    static func compose() -> some View {
        let presenter = EnterPresenter()
        let actions = Enter.Actions(
            onAccessButtonAction: { /*...*/ },
            onNextStepButtonAction: { /*...*/ }
        )
        return Enter(presenter: presenter, actions: actions)
    }
}
