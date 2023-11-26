//
//  ThemeView.swift
//  MyFirstIosProject
//
//  Created by Binbin Mu on 11/26/23.
//

import SwiftUI

struct ThemeView: View {
    let theme:Theme
    
    var body: some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(theme.mainColor)
            .foregroundColor(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
        
            
    }
}

#Preview {
    return ThemeView(theme: .buttercup)
}
