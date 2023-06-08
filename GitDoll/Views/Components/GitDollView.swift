import SwiftUI



struct GitDollView: View {

    
    var body: some View {
        ZStack {
            GrassView()
                .offset(y: 7)
            VStack{
            Spacer()
            DollView()
            }
        }
        .frame(height: 300)
    }
}

struct GitDollView_Previews: PreviewProvider {
    static var previews: some View {
        GitDollView()
    }
}
