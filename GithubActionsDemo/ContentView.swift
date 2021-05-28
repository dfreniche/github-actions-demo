//
//  ContentView.swift
//  GithubActionsDemo
//
//  Created by Diego Freniche Brito on 18/5/21.
//

import SwiftUI

struct ContentView: View {
    @State var numTouches = 0

    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Text("Second text")
                .padding()
            Button("Touch me!", action: {
                numTouches = numTouches + 1
                print("Touch! \( numTouches)")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
