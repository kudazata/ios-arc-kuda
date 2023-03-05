//
//  PastryProduct.swift
//  Models Practical
//
//  Created by Kuda Zata on 5/3/2023.
//

import Foundation

struct PastryProduct: Codable {
    
    let id: String
    let type: String
    let name: String
    let ppu: Double
    let batters: Batters
    let topping: [Topping]
}

struct Batters: Codable {
    let batter: [Topping]
}

struct Topping: Codable {
    let id: String
    let type: String
}

