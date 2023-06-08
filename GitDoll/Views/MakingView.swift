//
//  MakingView.swift
//  GitDoll
//
//  Created by polymac on 2023/06/09.
//

import SwiftUI

struct MakingView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("나만의 깃돌 만들기")
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 1)
                Text("STEP2. 깃돌 꾸미기")
                    .font(.headline)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(Color.green)
                    .padding(.bottom, 100)
                NameView()
                Spacer()
                ButtonView(title: "입력 완료", destination: CustomView())
            }
            .padding(40)
        }
    }
}

struct MakingView_Previews: PreviewProvider {
    static var previews: some View {
        MakingView()
            .environmentObject(SettingValue())
    }
}
