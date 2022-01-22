//
//  ButtonMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import Foundation

enum ButtonMenuItem: MenuItemProtocol {
    case styles
    case systemSizes
    case cornerStyle
    case imagePlacement
    case toggle
    case other
    
    var name: String {
        switch self {
        case .styles:
            return LocalizedString(.buttonMenuItemStyles)
        case .systemSizes:
            return LocalizedString(.buttonMenuItemSystemSizes)
        case .cornerStyle:
            return LocalizedString(.buttonMenuItemCornerStyle)
        case .imagePlacement:
            return LocalizedString(.buttonMenuItemImagePlacement)
        case .toggle:
            return LocalizedString(.buttonMenuItemToggle)
        case .other:
            return LocalizedString(.buttonMenuItemOther)
        }
    }
    
    var storyboardName: String {
        switch self {
        case .styles:
            return "ButtonStyles"
        case .systemSizes:
            return "ButtonSystemSizes"
        case .cornerStyle:
            return "ButtonCornerStyle"
        case .imagePlacement:
            return "ButtonImagePlacement"
        case .toggle:
            return "ButtonToggle"
        case .other:
            return "OtherButtons"
        }
    }
}

