//
//  RecentScores.swift
//  HP Trivia
//
//  Created by Alex Smith on 11/5/25.
//

import SwiftUI

struct RecentScores: View {
    @Binding var animateViewsIn: Bool
    
    var body: some View {
        VStack {
            if animateViewsIn {
                VStack {
                    
                    Text("Recent scores")
                        .font(.title2)
                    
                    Text("31")
                    
                    Text("24")
                    
                    Text("17")
                }
                .font(.title3)
                .foregroundStyle(.white)
                .padding(.horizontal)
                .background(.black.opacity(0.7))
                .clipShape(.rect(cornerRadius: 15))
                .transition(.opacity)
            }
        }
        .animation(.linear(duration: 1).delay(4), value: animateViewsIn)
    }
}

#Preview {
    RecentScores(animateViewsIn: .constant(true))
}
