import SwiftUI

struct Home: View {
    
    enum Constant {
        static let logo = "programou-transparente"
    }
    
    private let presenter: HomePresenter
    
    init(presenter: HomePresenter) {
        self.presenter = presenter
    }
    
    var body: some View {
        ZStack {
            EmptyView
                .backgroundColor(.gray900)
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: .xl) {
                Image(Constant.logo)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)

                TextComponent(presenter.title, size: .xxxl)
                    .fontWeight(.heavy)
                
                TextComponent(presenter.description, color: .gray400, size: .md)
                    
                ButtonComponent(title: presenter.buttonTitle) {}
            }
            .padding(.xxxl)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home(presenter: .init())
    }
}
