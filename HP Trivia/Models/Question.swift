//
//  Question.swift
//  HP Trivia
//
//  Created by Alex Smith on 11/2/25.
//

struct Question: Decodable {
    let id: Int
    let question: String
    let answer: String
    let wrong: [String]
    let book: Int
    let hint: String
}
