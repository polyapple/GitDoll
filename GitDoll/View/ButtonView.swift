import SwiftUI

struct ButtonView<Destination: View>: View {
    let title: String
    let destination: Destination
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text(title)
                .foregroundColor(Color.white)
                .font(.headline).bold()
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .cornerRadius(50)
        }
    }
}



struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "title", destination: ContentView())
    }
}
