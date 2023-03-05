//
//  Hospital.swift
//  Models Practical
//
//  Created by Kuda Zata on 5/3/2023.
//

import Foundation

struct Hospital: Codable {
    let medications: [Medication]
    let labs: [Imaging]
    let imaging: [Imaging]
}

// MARK: - Imaging
struct Imaging: Codable {
    let name: String
    let time: String
    let location: String
}

// MARK: - Medication
struct Medication: Codable {
    let aceInhibitors, antianginal, anticoagulants, betaBlocker: [AceInhibitor]
    let diuretic, mineral: [AceInhibitor]
}

// MARK: - AceInhibitor
struct AceInhibitor: Codable {
    let name, strength, dose, route: String
    let sig, pillCount, refills: String
}
