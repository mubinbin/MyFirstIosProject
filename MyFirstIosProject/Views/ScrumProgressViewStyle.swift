//
//  ScrumProgressViewStyle.swift
//  MyFirstIosProject
//
//  Created by Binbin Mu on 11/26/23.
//

import SwiftUI

struct ScrumProgressViewStyle: ProgressViewStyle {
    var theme: Theme
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(theme.accentColor)
                .frame(height: 20)
            
            if #available(iOS 15.0, *) {
                ProgressView(configuration)
                    .tint(theme.mainColor)
                    .frame(height: 12)
                    .padding(.horizontal)
            } else {
                ProgressView(configuration)
                    .frame(height: 12)
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    return ProgressView(value: 0.4)
        .progressViewStyle(ScrumProgressViewStyle(theme: .bubblegum))
        .previewLayout(.sizeThatFits)
}
