

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var settingValue: SettingValue
    @State var isFirst = false
    @State var randomMessage = ""
    
    struct MyCommit {
        let name: String
        let value: Int
    }

    let myCommits = [
        MyCommit(name: "전체 커밋", value: 834),
        MyCommit(name: "오늘 커밋", value: 3),
        MyCommit(name: "연속 커밋", value: 72)
    ]
    
    let bubbleMessages = [
        "Let’s Git it!",
        "기다리고 있었어요!",
        "오늘도 커밋 해 주실거죠?",
        "자라나라 머리머리~",
        "커밋 모아 태산!",
        "Hello World!",
        "1일 1커밋, 잊지 않으셨죠?",
        "저를 빡빡이로 두실건가요…?",
        "어, 이게 왜 되지?",
        "아깐 됐었는데…",
        "머지??",
    ]
    
    var body: some View {
        ZStack{
            Color(UIColor.systemGray6)
                .ignoresSafeArea()
            VStack(spacing: 20){

                VStack{
                        if isFirst {
                            HStack{
                                VStack {
                        Text("꾸준한 Git 커밋으로")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("나만의 잔디인형을")
                            .font(.title)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("가꿔보세요!")
                            .font(.title)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    }
                    .frame(alignment: .leading)
                        } else {
                            Text(randomMessage)
                                .padding(5)
                                .padding(.horizontal, 10)
                                .background(Color(UIColor.systemGray5))
                                .cornerRadius(50)
                                .transition(.scale)
                                .offset(y: 20)
                }
                    GitDollView()
                        .scaledToFit()
                        .frame(width: 120)
                        .onTapGesture {
                            randomMessage = bubbleMessages.randomElement() ?? ""
                        }
                    Text(settingValue.username + "의")
                    Text(settingValue.dollname)
                        .font(.title)
                        .bold()
                    ButtonView(title: "나만의 깃돌 만들기", destination: MakingView())
                }
                .frame(maxWidth: .infinity)
                .padding(30)
                .background(Color.white)
                .cornerRadius(10)
                
                VStack{
                    Text("나의 커밋 기록")
                        .font(.headline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom)
                    HStack(spacing: 50){
                    ForEach(0..<myCommits.count) { index in
                        VStack{
                            Text("\(myCommits[index].value)")
                                .font(.title)
                                .bold()
                            Text("\(myCommits[index].name)")
                                .font(.subheadline)
                        }
                        }
                    }
                    

                }
                .frame(maxWidth: .infinity)
                .padding(30)
                .background(Color.white)
                .cornerRadius(10)
                Spacer()
                
            }.padding()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(CustomSet())
            .environmentObject(SettingValue())
    }
}
