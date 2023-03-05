//
//  User.swift
//  Models Practical
//
//  Created by Kuda Zata on 5/3/2023.
//

import Foundation

struct User {
    
    private var randomUser: RandomUser
    
    init(randomUser: RandomUser) {
        self.randomUser = randomUser
    }
    
    var firstName: String {
        return randomUser.results[0].name.first
    }
    
    var lastName: String {
        return randomUser.results[0].name.last
    }
    
    var email: String {
        return randomUser.results[0].email
    }
    
    var dateOfBirth: String {
        return randomUser.results[0].dob.date
    }
    
    var nationality: String {
        return randomUser.results[0].nat
    }
    
}
