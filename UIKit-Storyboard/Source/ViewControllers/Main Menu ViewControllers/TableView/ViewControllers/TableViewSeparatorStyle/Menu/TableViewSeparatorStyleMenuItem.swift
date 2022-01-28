//
//  TableViewSeparatorStyleMenuItem.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import Foundation

enum TableViewSeparatorStyleMenuItem: MenuItemProtocol {
    case borderStyle
    case clearButton
    case disabled
    case traits
    case keyboardType
    case returnKeyType
    case other
    
    var name: String {
        switch self {
        case .borderStyle:
            return LocalizedString(.textFieldMenuItemBorderStyle)
        case .clearButton:
            return LocalizedString(.textFieldMenuItemClearButton)
        case .disabled:
            return LocalizedString(.textFieldMenuItemDisabled)
        case .traits:
            return LocalizedString(.textFieldMenuItemTraits)
        case .keyboardType:
            return LocalizedString(.textFieldMenuItemKeyboardType)
        case .returnKeyType:
            return LocalizedString(.textFieldMenuItemReturnKeyType)
        case .other:
            return LocalizedString(.textFieldMenuItemOther)
        }
    }
    
    var storyboardName: String {
        return "TableView"
    }
    
    var viewControllerIdentifier: String? {
        return ""
    }
}
