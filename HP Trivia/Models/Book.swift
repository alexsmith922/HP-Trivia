//
//  Book.swift
//  HP Trivia
//
//  Created by Alex Smith on 11/6/25.
//

import Foundation

struct Book: Identifiable {
    let id: Int
    let image: String
    let questions: [Question]
    var status: BookStatus
    
    }

enum BookStatus {
    case active, inactive, locked
}
