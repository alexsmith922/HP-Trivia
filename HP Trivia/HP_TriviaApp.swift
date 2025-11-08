//
//  HP_TriviaApp.swift
//  HP Trivia
//
//  Created by Alex Smith on 11/1/25.
//

import SwiftUI

@main
struct HP_TriviaApp: App {
    private var game = Game()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(game)
        }
    }
}

/**
 App Development Plan:
 🟨 Game intro screen
 - Gameplay screen
 - Game logic (questions, scores, etc)
 - Celebration
 🟨 Audio
 🟨 Animations
 - In-app purchases
 - Store
 ✅ Instructions screen
 - Books
 - Persist scores
 
 🟨
 ✅
 */
