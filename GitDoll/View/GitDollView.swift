import SwiftUI



struct GitDollView: View {

    
    var body: some View {
        ZStack {
            GrassView()
                .offset(y: -45)
            CustomView()
        }
    }
}

struct GitDollView_Previews: PreviewProvider {
    static var previews: some View {
        GitDollView()
    }
}
