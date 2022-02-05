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
            return LocalizedString(.labelMenuItemTextStyles)
        case .fontSizes:
            return LocalizedString(.labelMenuItemFontSizes)
        case .fontWeights:
            return LocalizedString(.labelMenuItemFontWeights)
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
