//
//  CellSelectionStyleItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 31/01/2022.
//

enum CellSelectionStyleItem: String, CaseIterable {
    case blue
    case gray
    case `default`
    
    var cellIdentifier: String {
        return self.rawValue
    }
}
