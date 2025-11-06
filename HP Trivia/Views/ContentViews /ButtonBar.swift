//
//  ButtonBar.swift
//  HP Trivia
//
//  Created by Alex Smith on 11/5/25.
//

import SwiftUI

struct ButtonBar: View {
    @Binding var animateViewsIn: Bool
    let geo: GeometryProxy
    
    var body: some View {
        HStack {
            
            Spacer()
            
            InstructionsButton(animateViewsIn: $animateViewsIn, geo: geo)
            
            Spacer()
            
            PlayButton(animateViewsIn: $animateViewsIn, geo: geo)
            
            
            SettingsButton(animateViewsIn: $animateViewsIn, geo: geo)
            
        }
        .frame(width: geo.size.width)
    }
}

#Preview {
    GeometryReader { geo in
        ButtonBar(animateViewsIn: .constant(true), geo: geo)
    }
}
