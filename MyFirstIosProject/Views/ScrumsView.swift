//
//  ScrumsView.swift
//  MyFirstIosProject
//
//  Created by Binbin Mu on 11/25/23.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New scrum")
            }
        }
    }
}

#Preview {
    return ScrumsView(scrums: DailyScrum.sampleData)
}
