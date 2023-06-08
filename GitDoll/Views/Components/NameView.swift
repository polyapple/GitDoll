import SwiftUI

struct NameView: View {
    
    @EnvironmentObject var settingValue: SettingValue
    @State var isUsernameActive: Bool = false
    @State var isDollnameActive: Bool = false
    
    var body: some View {
        VStack {
            Text("Git 아이디를 입력해주세요")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("Git ID", text: $settingValue.username, onEditingChanged: { active in
                isUsernameActive = active
            })
            .padding()
            .background(Color(UIColor.systemGray6))
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.green, lineWidth: 2)
                    .opacity(isUsernameActive ? 1 : 0)
            ) // 활성화 시 테두리 효과
            .padding(.bottom, 50)
            
            Text("깃돌의 이름을 지어주세요")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("GitDoll Name", text: $settingValue.dollname, onEditingChanged: { active in
                isDollnameActive = active
            })
            .padding()
            .background(Color(UIColor.systemGray6))
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.green, lineWidth: 2)
                    .opacity(isDollnameActive ? 1 : 0)
            )
        }
        .padding()
        
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
            .environmentObject(SettingValue())
    }
}
