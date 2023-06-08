
import SwiftUI

struct CustomView: View {
    
    @EnvironmentObject var customSet: CustomSet
    @State private var selectedCategory = 0
    
    var body: some View {
        VStack{
            VStack {
                
                GitDollView()
                Picker("카테고리를 선택해주세요", selection: $selectedCategory) {
                    ForEach(0 ..< CustomModel.customItems.count) {
                        Text(CustomModel.customItems[$0].title)
                    }
                }
                .padding()
                HStack{
                ForEach(CustomModel.customItems[selectedCategory].deco, id: \.self) { deco in
                    Image(deco.icon)
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 70)
                        .onTapGesture {
                            switch deco.image {
                            case let imageString where imageString.contains("Eyes"):
                                customSet.selectedEyes = deco.image
                            case let imageString where imageString.contains("Nose"):
                                customSet.selectedNose = deco.image
                            case let imageString where imageString.contains("Accessory"):
                                customSet.selectedAccessory = deco.image
                            default:
                                break
                            }
                        }
                }
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Spacer()
            Text("언제든 자유롭게 변경할 수 있어요!")
                .font(.footnote)
                .foregroundColor(.gray)
            ButtonView(title: "선택 완료", destination: ContentView())
        }
        .padding()
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
            .environmentObject(CustomSet())
    }
}
