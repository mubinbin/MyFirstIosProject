//
//  MyFirstIosProjectApp.swift
//  MyFirstIosProject
//
//  Created by Binbin Mu on 11/23/23.
//

import SwiftUI

@main
struct MyFirstIosProjectApp: App {
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums)
                .task {
                    do{
                        try await store.load()
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
        }
    }
}

