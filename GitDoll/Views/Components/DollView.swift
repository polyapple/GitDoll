

import SwiftUI

struct DollView: View {
    var body: some View {
        Image("GitDollBody")
            .resizable()
            .scaledToFit()
            .frame(width: 200)
//        Circle()
    }
}

struct DollView_Previews: PreviewProvider {
    static var previews: some View {
        DollView()
    }
}