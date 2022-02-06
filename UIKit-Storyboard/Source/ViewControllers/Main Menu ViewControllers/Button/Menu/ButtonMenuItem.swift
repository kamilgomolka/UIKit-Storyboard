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
            return "Button styles"
        case .systemSizes:
            return "System sizes"
        case .cornerStyle:
            return "Corner style"
        case .imagePlacement:
            return "Image placement"
        case .toggle:
            return "Toggle button"
        case .other:
            return "Other"
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
