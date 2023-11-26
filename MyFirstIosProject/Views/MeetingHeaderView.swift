//
//  MeetingHeaderView.swift
//  MyFirstIosProject
//
//  Created by Binbin Mu on 11/26/23.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondElapsed: Int
    let secondRemaining: Int
    
    private var totalSec: Int {
        secondElapsed + secondRemaining
    }
    
    private var progress: Double {
        guard totalSec > 0 else { return 1 }
        return Double(secondElapsed) / Double(totalSec)
    }
    
    private var minuteRemaining: Int {
        secondRemaining / 60
    }
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
            
            HStack{
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("\(secondElapsed)", systemImage: "hourglass.tophalf.fill")
                }
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("\(secondRemaining)", systemImage: "hourglass.bottomhalf.fill")
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time Remaining")
        .accessibilityValue("\(minuteRemaining) minutes")
    }
}

#Preview {
    return MeetingHeaderView(secondElapsed: 60, secondRemaining: 180)
        .previewLayout(.sizeThatFits)
}
