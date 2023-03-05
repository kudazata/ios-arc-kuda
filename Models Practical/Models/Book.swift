//
//  Book.swift
//  Models Practical
//
//  Created by Kuda Zata on 5/3/2023.
//

import Foundation

struct Book: Codable {
    let isbn: String
    let author: Author
    let editor: Author
    let title: String
    let category: [String]
}

struct Author: Codable {
    let lastname: String
    let firstname: String
}
