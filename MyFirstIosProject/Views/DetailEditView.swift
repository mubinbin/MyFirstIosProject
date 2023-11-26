//
//  DetailEditView.swift
//  MyFirstIosProject
//
//  Created by Binbin Mu on 11/25/23.
//

import SwiftUI

struct DetailEditView: View {
    @State private var newScurm = DailyScrum.emtpyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $newScurm.title)
                
                HStack {
                    Slider(value: $newScurm.lengthInMinutesDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(newScurm.lengthInMinutes) minutes")
                    Spacer()
                    Text("\(newScurm.lengthInMinutes) minutes")
                        .accessibilityHidden(true)
                }
                
                ThemePickerView(selection: $newScurm.theme)
            }
            
            Section(header: Text("Attendees")) {
                ForEach(newScurm.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete(perform: { indexSet in
                    newScurm.attendees.remove(atOffsets: indexSet)
                })
                
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            newScurm.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}

#Preview {
    DetailEditView()
}
