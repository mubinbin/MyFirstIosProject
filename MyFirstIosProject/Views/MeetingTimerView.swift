//
//  MeetingTimerView.swift
//  MyFirstIosProject
//
//  Created by Binbin Mu on 12/21/23.
//

import SwiftUI

struct MeetingTimerView: View {
    let speakers: [ScrumTimer.Speaker]
    let theme: Theme
    
    private var currentSpeaker: String {
        speakers.first(where: { !$0.isCompleted })?.name ?? "Someone"
    }
    
    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 24)
            .overlay {
                VStack {
                    Text(currentSpeaker)
                        .font(.title)
                    Text("is speaking")
                }
//     this modifier makes VoiceOver read the 2 text views as one sentence
                .accessibilityElement(children: .combine)
            }
    }
}

#Preview {
    var speakers: [ScrumTimer.Speaker] {
        [ScrumTimer.Speaker(name: "Binbin", isCompleted: false), ScrumTimer.Speaker(name: "MU", isCompleted: false)]
    }
    
    return MeetingTimerView(speakers: speakers, theme: .yellow)
}
