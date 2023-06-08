//
//  MainView.swift
//  GitDoll
//
//  Created by polyappledev on 2023/06/05.
//

import SwiftUI

struct MyCommit {
    let name: String
    let value: Int
}

let myCommits = [
    MyCommit(name: "전체 커밋", value: 834),
    MyCommit(name: "오늘 커밋", value: 3),
    MyCommit(name: "연속 커밋", value: 72)
]

struct MainView: View {
    var body: some View {
        ZStack{
            Color(UIColor.systemGray6)
                .ignoresSafeArea()
            VStack(spacing: 20){
                Spacer()
                VStack{
                    HStack{
                    VStack{
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
                    .frame(alignment: .leading)
                    Spacer()
                }
                    GitDollView()
                        .frame(width: 120)
                    Text("Hello, world!")
                    ButtonView(title: "나만의 깃돌 만들기", destination: CustomView())
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
    }
}
