
import SwiftUI

struct CustomView: View {
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
                  Picker("카테고리를 선택해주세요", selection: $selectedCategory) {
                      
                      ForEach(CustomModel.customItems, id: \.self) { customModel in
                          Text(customModel.title)
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
