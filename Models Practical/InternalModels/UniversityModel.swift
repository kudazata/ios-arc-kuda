//
//  University.swift
//  Models Practical
//
//  Created by Kuda Zata on 5/3/2023.
//

import Foundation

struct UniversityModel {
    
    private let university: University
    
    init(university: University) {
        self.university = university
    }
    
    var name: String {
        return university.name
    }
    
    var mainDomain: String {
        return university.domains[0]
    }
    
    var stateProvince: String {
        return university.stateProvince ?? "N/A"
    }
    
    var alphaTwoCode: String {
        return university.alphaTwoCode
    }
    
    var mainWebPage: String {
        return university.webPages[0]
    }
}


/**let stateProvince: String?
 let domains: [String]
 let country: String
 let webPages: [String]
 let name: String
 let alphaTwoCode: String*/
