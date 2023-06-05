import SwiftUI

struct SettingView: View {
    
    @State var dollname: String = "깃돌이"
    @State var username: String = "polyapple"
    @State var isRandom: Bool = true
    @State var notificationsEnabled: Bool = false
    @State private var previewIndex = 0
    @State private var showNameInputBox = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("깃돌 설정")) {
                    NavigationLink(destination: InputBox(title: "깃돌 이름 변경", defaultValue: $dollname)) {
                        HStack {
                            Text("깃돌 이름 변경")
                            Spacer()
                            Text(dollname)
                                .foregroundColor(.gray)
                        }
                    }
                    NavigationLink(destination: CustomView()) {
                        Text("깃돌 꾸미기 변경")
                        
                    }
                    Toggle(isOn: $isRandom) {
                        Text("잔디 랜덤 배치")
                    }
                }
                
                Section(header: Text("Git 설정"), footer: Text("Git 아이디 변경 시 꾸미기 설정이 초기화됩니다.")) {
                    NavigationLink(destination: InputBox(title: "Git 아이디 변경", defaultValue: $username)) {
                        HStack {
                            Text("Git 아이디  변경")
                            Spacer()
                            Text(username)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationBarTitle("깃돌 설정")
        }
    }
}

struct InputBox: View {
    @Environment(\.presentationMode) var presentationMode
    var title: String
    @Binding var defaultValue: String
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            TextField("이름 입력", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .onAppear {
                    text = defaultValue
                }
            
            HStack {
                Spacer()
                
                Button("취소") {
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
                
                Button("저장") {
                    defaultValue = text
                    presentationMode.wrappedValue.dismiss()
                }
                .padding()
                .foregroundColor(.blue)
            }
            .padding()
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
