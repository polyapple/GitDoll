//
//  MainView.swift
//  GitDoll
//
//  Created by polyappledev on 2023/06/05.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            GitDollView()
            Text("Hello, world!")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
