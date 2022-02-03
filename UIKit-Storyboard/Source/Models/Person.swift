//
//  Person.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/02/2022.
//

import Foundation

struct Person: Decodable {
    let id: Int
    let firstName: String?
    let lastName: String?
    
    var fullName: String? {
        if let firstName = firstName, !firstName.isEmpty,
           let lastName = lastName, !lastName.isEmpty {
            return lastName + " " + firstName
        } else if let firstName = firstName, !firstName.isEmpty {
            return firstName
        } else {
            return lastName
        }
    }
}
