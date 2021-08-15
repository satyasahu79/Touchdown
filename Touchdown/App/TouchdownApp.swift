//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Satya Prakash Sahu on 13/08/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
