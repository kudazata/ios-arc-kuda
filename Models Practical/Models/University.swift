//
//  University.swift
//  Models Practical
//
//  Created by Kuda Zata on 5/3/2023.
//

import Foundation

struct University: Codable {
    let stateProvince: String?
    let domains: [String]
    let country: String
    let webPages: [String]
    let name: String
    let alphaTwoCode: String

    enum CodingKeys: String, CodingKey {
        case stateProvince = "state-province"
        case domains, country
        case webPages = "web_pages"
        case name
        case alphaTwoCode = "alpha_two_code"
    }
}


