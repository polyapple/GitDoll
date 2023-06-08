//
//  CustomView.swift
//  GitDoll
//
//  Created by polyappledev on 2023/06/05.
//

import SwiftUI
struct CustomView: View {
    var customCategory = ["눈", "코", "장식"]
        @State private var selectedCategory = 0
    var body: some View {
        VStack{
        VStack {
            Text("나만의 깃돌 만들기")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                
            Text("STEP2. 깃돌 꾸미기")
                .font(.headline)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.green)
                    GitDollView()
            Spacer()
                  Picker("원하는 색을 골라주세요", selection: $selectedCategory) {
                      ForEach(0 ..< customCategory.count) {
                          Text(self.customCategory[$0])
                      }
                  }
            
            
            
                  Text("당신은 '\(customCategory[selectedCategory])' 를 선택하였습니다. ")
              }
              .pickerStyle(SegmentedPickerStyle())
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Spacer()
            ButtonView(title: "선택 완료", destination: ContentView())
        }
        .padding()
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
