

import SwiftUI


class CustomSet: ObservableObject {
    @Published var selectedEyes: String = "EyesItem1"
    @Published var selectedNose: String = "NoseItem1"
    @Published var selectedAccessory: String = "AccessoryItem1"
    @Published var emotionIndex: Int = 2
}


struct DollView: View {
    
    @EnvironmentObject var customSet: CustomSet
    
    var body: some View {
        
        ZStack{
//            Color.clear.frame(width: 200, height: 200)
            Image("GitDollBody")
                .resizable()
                .scaledToFit()
                .frame(width: 230)
                .overlay(
                    Image(customSet.selectedEyes)
                        .resizable()
                        .scaledToFit()
                )
                .overlay(
                    Image(customSet.selectedAccessory)
                        .resizable()
                        .scaledToFit()
                )
                .overlay(
                    Image(customSet.selectedNose)
                        .resizable()
                        .scaledToFit()
                )
        }
        
    }
}

struct DollView_Previews: PreviewProvider {
    static var previews: some View {
        DollView()
            .environmentObject(CustomSet())
    }
}
