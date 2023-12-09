//
//  ScrumsView.swift
//  MyFirstIosProject
//
//  Created by Binbin Mu on 11/25/23.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingNewScurmView = false
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {
                    isPresentingNewScurmView = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New scrum")
            }
        }
        .sheet(isPresented: $isPresentingNewScurmView) {
            NewScrumSheet(scrums: $scrums, isPresentingNewScrumView: $isPresentingNewScurmView)
        }
    }
}
#Preview {
    return ScrumsView(scrums: .constant(DailyScrum.sampleData))
}

