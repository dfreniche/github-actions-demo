//
//  GithubActionsDemoApp.swift
//  GithubActionsDemo
//
//  Created by Diego Freniche Brito on 18/5/21.
//

import SwiftUI

@main
struct GithubActionsDemoApp: App {
    
    init() {
        if let value = ProcessInfo.processInfo.environment["ENV_VAR"] {
            print("Environment Variable: \(value)")
        }
        if CommandLine.arguments.contains("--LAUNCH_ARG") {
            print("Passed CLI arg")
        }
    }
    
    var body: some Scene {
        WindowGroup {
            if CommandLine.arguments.contains("--LAUNCH_ARG") {
                if let value = ProcessInfo.processInfo.environment["ENV_VAR"] {
                    ContentView(color: .red, text: value)
                } else {
                    ContentView(color: .red, text: "No value found")
                }
            } else {
                ContentView(color: .blue, text: "Hello World!")
            }
        }
    }
}
