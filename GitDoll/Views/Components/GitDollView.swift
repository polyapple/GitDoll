import SwiftUI



struct GitDollView: View {

    
    var body: some View {
        ZStack {
            GrassView()
//                .offset(y: 20)
            VStack{
            Spacer()
            DollView()
            }
        }
        .frame(height: 260)
//        .background(.red)
    }
}

struct GitDollView_Previews: PreviewProvider {
    static var previews: some View {
        GitDollView()
    }
}
