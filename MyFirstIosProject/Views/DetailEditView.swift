//
//  DetailEditView.swift
//  MyFirstIosProject
//
//  Created by Binbin Mu on 11/25/23.
//

import SwiftUI

struct DetailEditView: View {
    @State private var newScurm = DailyScrum.emtpyScrum
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $newScurm.title)
                
                HStack {
                    Slider(value: $newScurm.lengthInMinutesDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    Spacer()
                    Text("\(newScurm.lengthInMinutes) minutes")
                }
            }
        }
    }
}

#Preview {
    DetailEditView()
}
