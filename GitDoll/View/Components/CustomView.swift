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
            Text("STEP2. 깃돌 꾸미기")
                    GitDollView()
            Spacer()
                  Picker("원하는 색을 골라주세요", selection: $selectedCategory) {
                      ForEach(0 ..< customCategory.count) {
                          Text(self.customCategory[$0])
                      }
                  }
            
            
            

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
