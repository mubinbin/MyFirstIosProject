//
//  MyFirstIosProjectApp.swift
//  MyFirstIosProject
//
//  Created by Binbin Mu on 11/23/23.
//

import SwiftUI

@main
struct MyFirstIosProjectApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}

