//
//  StopWatchAppApp.swift
//  StopWatchApp
//
//  Created by Tom Wu on 2022-11-09.
//

import SwiftUI

@main
struct StopWatchAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                Text("World Clock")
                    .tabItem{
                        Image(systemName: "globe")
                        Text("World Clock")
                    }
            }
        }
    }
}
