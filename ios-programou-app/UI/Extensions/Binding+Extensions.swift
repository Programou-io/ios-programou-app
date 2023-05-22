import SwiftUI

extension Binding<PresentationMode> {
    func dimiss() {
        projectedValue.wrappedValue.dismiss()
    }
}
