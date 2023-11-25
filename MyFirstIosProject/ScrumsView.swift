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
        List(scrums, id: \.title) { scrum in
            CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    return ScrumsView(scrums: DailyScrum.sampleData)
}
