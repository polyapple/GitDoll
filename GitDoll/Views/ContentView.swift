

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "star.circle.fill")
                    Text("나의 깃돌")
                }
            SettingView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("깃돌 설정")
                }
        }
        .accentColor(.green)
        .onAppear() {
            UITabBar.appearance().barTintColor = .white
        }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SettingValue())
    }
}
