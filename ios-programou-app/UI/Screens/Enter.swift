import SwiftUI

struct Enter: View {
    
    @State private var nameTextField = ""
    @State private var isSelected = false
    
    private let presenter: EnterPresenter
    private let actions: Actions
    
    init(presenter: EnterPresenter, actions: Actions) {
        self.presenter = presenter
        self.actions = actions
    }
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        AppBackground {
            VStack {
                
                VStack(alignment: .leading) {
                    BackButton(action: onBackButtonActionHandler)
                        .padding(.vertical, 8)
                    
                    TextComponent(presenter.title, size: .xxl)
                        .fontWeight(.heavy)
                    
                    TextComponent(presenter.description, color: .gray400)
                    
                    BoxComponent {
                        VStack(spacing: 20) {
                            Image("programou-logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150)
                                .padding()
                            
                            VStack(alignment: .leading) {
                                TextComponent(presenter.nameLabel)
                                TextField(
                                    presenter.namePlaceholder,
                                    text: $nameTextField
                                )
                                .onTapGesture { isSelected.toggle() }
                                .padding()
                                .background(ColorProvider.color(.gray900))
                                .foregroundColor(ColorProvider.color(.white))
                                .cornerRadius(8)
                            }
                            
                            HStack {
                                TextComponent(presenter.accountAccessButtonDescription)
                                    .frame(maxWidth: .infinity)
                                
                                Button(action: actions.onAccessButtonAction) {
                                    Text(presenter.accountAccessButtonTitle)
                                        .foregroundColor(ColorProvider.color(.turquoise500))
                                }
                                .frame(maxWidth: 80)
                                .frame(height: 40)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 8)
                                        .stroke(ColorProvider.color(.turquoise500), lineWidth: 1)
                                )
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(ColorProvider.color(.gray400), lineWidth: 1)
                            )
                            
                            ButtonComponent(title: presenter.nextStepButtonTitle, action: actions.onNextStepButtonAction)
                        }
                        .padding(.md)
                    }
                    .scaledToFit()
                    
                }
                
                Spacer()
            }
            .padding(.vertical, 40)
            .padding(.horizontal, 20)
        }
    }
    
    private func onBackButtonActionHandler() {
        presentationMode.dimiss()
    }
    
    struct Actions {
        let onAccessButtonAction: Bind
        let onNextStepButtonAction: Bind
    }
}

struct Enter_Previews: PreviewProvider {
    static var previews: some View {
        let presenter = EnterPresenter()
        let actions = Enter.Actions(onAccessButtonAction: {
            print("DEBUG: Acessar")
        }, onNextStepButtonAction: {
            print("DEBUG: Proximo Passo")
        })
        return AppBackground {
            Enter(presenter: presenter, actions: actions)
        }
    }
}
