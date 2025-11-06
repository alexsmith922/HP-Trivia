//
//  PlayButton.swift
//  HP Trivia
//
//  Created by Alex Smith on 11/5/25.
//

import SwiftUI

struct PlayButton: View {
    @Binding var animateViewsIn: Bool
    @State private var scalePlayButton = false
    @State private var playGame = false
    let geo: GeometryProxy
    
    var body: some View {
        VStack {
            if animateViewsIn {
                Button {
                    playGame.toggle()
                } label: {
                    Text("Play!")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding(.vertical, 7)
                        .padding(.horizontal, 50)
                        .background(.brown)
                        .clipShape(.rect(cornerRadius: 7))
                        .shadow(radius: 5)
                        .scaleEffect(scalePlayButton ? 1.2 : 1)
                        .onAppear {
                            withAnimation(.easeInOut(duration: 1.3).repeatForever()) {
                                scalePlayButton.toggle()
                            }
                        }
                }
                .transition(.offset(y: geo.size.height/3))
            }
        }
        .animation(.easeOut(duration: 0.7).delay(2), value: animateViewsIn)
        Spacer()
    }
}

#Preview {
    GeometryReader {geo in
        PlayButton(animateViewsIn: .constant(true), geo: geo)
    }
}
