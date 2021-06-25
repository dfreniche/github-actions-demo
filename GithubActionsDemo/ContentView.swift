//
//  ContentView.swift
//  GithubActionsDemo
//
//  Created by Diego Freniche Brito on 18/5/21.
//

import SwiftUI

struct ContentView: View {
    @State var numTouches = 0
    var color: Color
    var text: String

    var body: some View {
        VStack {
            Text(text)
                .padding()
                .foregroundColor(color)
            Text("Second text")
                .padding()
                .foregroundColor(color)
            Button("Touch me!", action: {
                numTouches = numTouches + 1
                print("Touch! \( numTouches)")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(color: .red, text: "Hello World!")
    }
}
