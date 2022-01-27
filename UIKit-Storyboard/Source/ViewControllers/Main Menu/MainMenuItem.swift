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
    case textField
    case textView
    case scrollView
    
    var name: String {
        switch self {
        case .allElements:
            return LocalizedString(.mainMenuItemAllElements)
        case .label:
            return LocalizedString(.mainMenuItemLabel)
        case .button:
            return LocalizedString(.mainMenuItemButton)
        case .textField:
            return LocalizedString(.mainMenuItemTextField)
        case .textView:
            return LocalizedString(.mainMenuItemTextView)
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
        case .textField:
            return "TextFieldMenu"
        case .textView:
            return "TextViewMenu"
        case .scrollView:
            return "ScrollViewMenu"
        }
    }
}
