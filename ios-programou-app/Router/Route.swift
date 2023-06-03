import SwiftUI

enum Route {
    case home
    case enter
    
    func isPresented(_ route: Route, onBack: @escaping Bind) -> Binding<Bool> {
        return Binding(get: { self == route }, set: { [onBack] _ in onBack() })
    }
}
