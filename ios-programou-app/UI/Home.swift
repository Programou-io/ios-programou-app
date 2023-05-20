import SwiftUI

struct Home: View {
    
    private let presenter: HomePresenter
    private let onGoToEnterActionHandler: Bind
    
    init(presenter: HomePresenter, onGoToEnter: @escaping Bind) {
        self.presenter = presenter
        self.onGoToEnterActionHandler = onGoToEnter
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: .xl) {
            Image(Constant.logo)
                .resizable()
                .scaledToFill()
                .frame(height: Constant.imageHeight)

            TextComponent(presenter.title, size: .xxxl)
                .fontWeight(.heavy)
            
            TextComponent(presenter.description, color: .gray400, size: .md)
                
            ButtonComponent(title: presenter.buttonTitle, action: onGoToEnterActionHandler)
        }
        .padding(.xxxl)
    }
    
    private enum Constant {
        static let logo = "programou-transparente"
        
        static let imageHeight = CGFloat(200)
    }
}

struct Home_Previews: PreviewProvider {
    
    static var previews: some View {
        let presenter = HomePresenter()
        return ZStack {
            EmptyView.backgroundColor(.gray900).ignoresSafeArea()
            
            Home(presenter: presenter, onGoToEnter: {})
        }
    }
    
}
