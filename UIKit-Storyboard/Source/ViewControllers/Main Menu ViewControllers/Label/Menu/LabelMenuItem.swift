//
//  LabelMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import Foundation

enum LabelMenuItem: MenuItemProtocol {
    case textStyles
    case fontSizes
    case fontWeights
    
    var name: String {
        switch self {
        case .textStyles:
            return "System text styles"
        case .fontSizes:
            return "Font sizes in pt"
        case .fontWeights:
            return "Font weights"
        }
    }
    
    var storyboardName: String {
        switch self {
        case .textStyles:
            return "TextStyles"
        case .fontSizes:
            return "FontSizes"
        case .fontWeights:
            return "FontWeights"
        }
    }
}
