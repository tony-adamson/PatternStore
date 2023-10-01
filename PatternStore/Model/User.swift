//
//  User.swift
//  PatternStore
//
//  Created by Антон Адамсон on 01.10.2023.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullName: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let components = formatter.personNameComponents(from: fullName) {
            formatter.style = .abbreviated
            return formatter.string(from: components)
        }
        
        return ""
    }
}

extension User {
    static var MOC_USER = User(id: UUID().uuidString, fullName: "Super Admin", email: "test@test.com")
}
