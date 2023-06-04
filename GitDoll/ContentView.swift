//
//  ContentView.swift
//  GitDoll
//
//  Created by polyappledev on 2023/06/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            GitDollView()
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
