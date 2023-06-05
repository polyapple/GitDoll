import SwiftUI



struct GitDollView: View {

    
    var body: some View {
        ZStack {
            GrassView()
                .offset(y: 3)
            VStack{
            Spacer()
            DollView()
            }
        }
        .frame(height: 300)
//        .background(Color.red)
    }
}

struct GitDollView_Previews: PreviewProvider {
    static var previews: some View {
        GitDollView()
    }
}
