//
//  MainMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/12/2021.
//

import Foundation

enum MainMenuItem: MenuItemProtocol {
    case allElements
    case label
    case button
    case scrollView
    
    var name: String {
        switch self {
        case .allElements:
            return LocalizedString(.mainMenuItemAllElements)
        case .label:
            return LocalizedString(.mainMenuItemLabel)
        case .button:
            return LocalizedString(.mainMenuItemButton)
        case .scrollView:
            return LocalizedString(.mainMenuItemScrollView)
        
        }
    }
    
    var storyboardName: String {
        switch self {
        case .allElements:
            return "AllElements"
        case .label:
            return "LabelMenu"
        case .button:
            return "ButtonMenu"
        case .scrollView:
            return "ScrollViewMenu"
        }
    }
}
