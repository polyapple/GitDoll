

import SwiftUI

struct CustomView: View {
    var body: some View {
        Circle()
            .frame(width: 200)
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView()
    }
}
