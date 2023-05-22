import SwiftUI

struct BackButton: View {
    
    private let action: Bind
    
    init(action: @escaping Bind) {
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "arrow.left")
                .tint(.white)
        }
    }
}
